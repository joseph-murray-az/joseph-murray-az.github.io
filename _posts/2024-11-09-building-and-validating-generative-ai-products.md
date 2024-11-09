---
layout: post
title: Building and validating generative AI products
tags: [validation, generative, chatbots]
---

Developing and validating generative AI products, whether for single or multi-turn conversations, can be approached with a strategy similar to traditional software development: decompose complex tasks into smaller, manageable subtasks and iterate. One key aspect of this strategy is using AI to mimic human judgment in validating responses.

Let's consider an example where we're asking a model to read and summarize a long article, then answer questions. We might break this down into tasks such as:

1. Reading the article and preparing to answer questions
2. Applying a set of rules to the response
3. Determining the reading level of the user
4. Responding to an initial prompt

## Initial Development Process

The initial pass typically involves handling each step using a foundation model with a well-written prompt. This process is iterative, with prompts being adjusted and tested until consistent, "reasonable" responses are achieved.

To define "reasonable," we create a rubric describing desired responses for different scenarios. These might include various articles or questions about a specific article. Initial validation often requires a human to run the prompt, review the output, and grade it against the rubric, perhaps on a scale from 1 to 5.

## Validation Techniques

Once a minimum viable product is achieved, validation can be expanded to include experts or target users for real-world feedback. The original rubric can be used to rate responses, allowing for further refinements based on this broader input.

## Advanced Development

As development progresses, prompts may become long and difficult to maintain. To address this, we can introduce agents and assign tasks to each. For example, a separate agent could be used to read and prepare the article.

This approach offers two main advantages:
1. It simplifies the main prompt by breaking tasks apart.
2. It creates reusable agents for future projects.

Additionally, isolating tasks allows for the integration of additional sources, tools, or techniques to produce more accurate output. For instance, a knowledge base containing examples of text at different reading levels could be used to rate and adjust responses.

## Automated Testing and Future Directions

To enable faster iteration, validation should be automated. One method is to pass the initial output along with the rubric to another foundation model for validation. For multi-turn conversations, the entire conversation can be captured and validated for:

- Role adherence
- Conversation relevancy
- Knowledge retention
- Conversation completeness

The field of generative AI application validation is still emerging. Efforts are underway to create frameworks similar to standard unit test frameworks like JUnit. As this area develops, we can expect more sophisticated tools and methodologies to emerge.

In the words of Mr. Incredible, "We'll get there when we get there!" The journey of generative AI product development is ongoing, and as we continue to refine our approaches, we'll undoubtedly discover new and improved ways to build and validate these powerful tools.

Note:  For many reasons, I believe that this and the previous two posts will need some rework.
