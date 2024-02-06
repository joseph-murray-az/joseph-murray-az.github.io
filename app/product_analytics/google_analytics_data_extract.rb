# frozen_string_literal: true

require 'googleauth'
require 'google/analytics/data'
require 'google/analytics/data/v1beta'

module ProductAnalytics
  class GoogleAnalyticsDataExtractJob < ApplicationJob
    queue_as :maintenance

    # Google Analytics Constants
    GA_CONSTANTS = {
      report_date_range: Google::Analytics::Data::V1beta::DateRange.new(start_date: 'yesterday', end_date: 'yesterday'),
      report_dimension: Google::Analytics::Data::V1beta::Dimension.new(name: 'date'),
      report_metrics: [
        Google::Analytics::Data::V1beta::Metric.new(name: 'newUsers'),
        Google::Analytics::Data::V1beta::Metric.new(name: 'active1DayUsers'),
        Google::Analytics::Data::V1beta::Metric.new(name: 'active7DayUsers'),
        Google::Analytics::Data::V1beta::Metric.new(name: 'active28DayUsers')
      ]
    }.freeze


    # Data Pipeline Constants
    PIPELINE_CONSTANTS = {
      noun: 'StrongMind.Product.Analytics.Data',
      report_source: 'analytics',
      report_source_api_version: '3',
      report_source_domain: 'googleapis.com'
    }.freeze

    def perform
      # Do something later
      # Main execution
      property_map = {
        'StrongMind_Central' => '345384289',
        'StrongMind_Identity' => '380617891',
        'StrongMind_Bulk_Attendance' => '352876244',
        'StrongMind_Tools' => '320576668'
      }

      google_analytics_client = google_analytics_client(google_creds_hash)
      property_map.each do |key, value|
        response = run_google_analytics_report(google_analytics_client, value)
        next unless response

        json_data = create_json_data(key, value, response)
        formatted_json = JSON.pretty_generate(json_data)
        Rails.logger.info("Post product #{key} property #{value} timestamp.  #{formatted_json}")
        DataPipelineClient.post(json_data)
      end
    end

    def google_creds_hash
      google_creds = Rails.application.credentials.google
      {
        type: 'service_account',
        project_id: 'strongmind-product',
        private_key_id: google_creds[:private_key_id],
        private_key: google_creds[:private_key],
        client_email: google_creds[:client_email],
        client_id: google_creds[:client_id],
        auth_uri: 'https://accounts.google.com/o/oauth2/auth',
        token_uri: 'https://oauth2.googleapis.com/token',
        auth_provider_x509_cert_url: 'https://www.googleapis.com/oauth2/v1/certs',
        client_x509_cert_url: google_creds[:client_x509_cert_url],
        universe_domain: 'googleapis.com'
      }
    end 

    # Function to handle errors and log messages
    def handle_error(error, message)
      Rails.logger.error("#{message}: #{error.message}")
      # You can choose to raise a custom error, return nil, or take other actions based on your use case.
    end

    # Function to get a Google Analytics client
    def google_analytics_client(credentials)
      Google::Analytics::Data.analytics_data { |config| config.credentials = credentials }
    rescue Google::Auth::Error, StandardError => e
      handle_error(e, 'Google Analytics client initialization error')
      raise e
    end

    # Function to run a report using Google Analytics client
    def run_google_analytics_report(client, property_id)
      request = Google::Analytics::Data::V1beta::RunReportRequest.new(
        property: "properties/#{property_id}",
        metrics: GA_CONSTANTS[:report_metrics],
        dimensions: [GA_CONSTANTS[:report_dimension]],
        date_ranges: [GA_CONSTANTS[:report_date_range]]
      )

      client.run_report(request)
    rescue Google::ApiError, StandardError => e
      handle_error(e, 'Google Analytics API error')
      raise
    end 

    # Function to create JSON data
    def create_json_data(key, value, response)
      # Initialize the JSON data structure
      json_data = {
        'noun' => PIPELINE_CONSTANTS[:noun],
        'messageTimestamp' => Time.now.iso8601,
        'meta' => {
          'apiVersion' => PIPELINE_CONSTANTS[:report_source_api_version],
          'source' => PIPELINE_CONSTANTS[:report_source],
          'domain' => PIPELINE_CONSTANTS[:report_source_domain]
        },

        'identifiers' => {
          'propertyID' => value,
          'propertyName' => key
        },
        'data' => {}
      } 

      # Add dimension values to identifiers (if available)
      if response.dimension_headers&.first&.name && response.rows&.first&.dimension_values&.first&.value
        json_data['identifiers'][response.dimension_headers.first.name] =
          response.rows.first.dimension_values.first.value
      end

      # Add metric values to data (if available)
      if response.metric_headers && response.rows&.first&.metric_values
        json_data['data'] = Hash[response.metric_headers.zip(response.rows.first.metric_values).map do |h, v|
          [h.name, v.value]
        end]
      end 
      json_data
    rescue StandardError => e
      handle_error(e, 'JSON data creation error')
      raise
    end
  end
end

