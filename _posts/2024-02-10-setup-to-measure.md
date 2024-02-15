---
layout: post
title: Setup to measure
---

Product management requires you to understand the company and the how the products of that company support the vision, not just for your company, but for partner companies as well.  For example, when choosing even free products from Google, it is helpful to understand that the purpose of these products is to provide data intended for advertisers.  This, I believe, is why Google Analytics 4 (GA4) is preconfigured for measuring the effectiveness of funnels and conversions.

While it is easy to setup and install GA4 in your product--you only need to add a small section of code to the header--it takes more effort and understanding to adopt and customize the measures.  GA4 will measure standard user actions, such as element, form, and external link clicks, but it takes more work to determine which specific element or form was clicked.  In addition, measuring internal link clicks and creating user segments, requires customization as well.

The first step is to determine what comprises a conversion.  In ecommerce, a conversion is a sale, after all this is the advertiser's aim.  But in other fields, and for your product in particular, the goal may be something else.  As an example, I worked on a feature that had the aim of making attendance approval easy, the goal was to increase the percentage of parents and guardians that approve attendance on time.  In this case, the conversion was attendance approval measured by clicks on the approve button and the audience was parents or guardians.

In order to do this, I needed to change my setup to use Google Tag Manager (GTM).  You can see how the additional features provided by integrating GTM has already caused me to expand my usage of Google products, which provides more data for targeted advertising.  Once I had GTM setup, I created a new tag in GTM that fired each time the approval button was clicked, and I configured this tag as a conversion in GA4.  In this case, since only parents and guardians had access to the approval button, I did not have to add a variable to determine the user role.

In the end, I was able adapt the tools to measure the success criteria for the epic.  Although the tools we chose were "free," there was a cost in time and effort.  But there was also a lesson, an example of how each product contributes to the company vision.  

All things are connected, all are dependent.
