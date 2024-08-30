---
layout: post
title: A helpful assistant
tags: [AI, generative, models]
---

Thus far for my new AI project, I have not written any stories that require AI.  However, I have made extensive use of AI for discovery, analysis, and composition.

For discovery, my new habit is to use AI chat as a starting point to learn about existing software products that may have solved a problem similar to the one I am working on.  When I do this, I often learn about niche products and encounter new keywords that I can use as search terms for additional discovery.  For example, I was unaware that you can use a Digital Asset Manager to store and categorize digital content, a Content Management System to write and publish web content, a Reference Manager to organize and format reference materials.  These keywords proved useful for finding recorded demos, documentation, and reviews for competitive analysis.  (In the case of my current product, I was able to discover what is missing from current industry product offerings).

Statistical analysis, on the other hand, is a bit more difficult, but this too can be accomplished in a chat session.  There are some caveats though:  Since generative AI, especially Large Language Models, are designed for text rather than numbers, I learned to be intentional about what I am trying to accomplish—I now use small datasets, clear instructions, and single tasks.  In addition, no matter the model, whether I am using OpenAI GPT, Anthropic Claude, or Meta Llama, I have found that the following sequence usually leads to results:

1. Download a small, representative dataset for analysis
2. Perform data cleansing and formatting
3. Load the file into chat
4. Ask the model to describe the dataset
5. Provide any additional context or corrections
6. Ask the model to perform the specific analysis
 
Not all of the models are able to visualize data so I usually create histograms, scatterplots, and other data visualizations outside of AI.  In addition, since most models generate Python code for statistical analysis, I find that I can adapt that code to run analysis on larger datasets in a Jupyter Notebook.  I still use the chat to help me interpret results:  Since I am not a data analyst or Python programmer, this is a big help.

Finally, for composition, I have found that generative AI models can produce well structured, grammatically correct, bland prose, which requires a rewrite in the best case.  And, just like people who believe everything they read, generative AI seems unaware when inaccuracies and misstatements creep into composition.  Make sure to validate analysis and verify written work.  And write, and rewrite, and rewrite some more.

For all that generative AI can do for you, the results are far from perfect—your code will be buggy, your insights incorrect, your epiphanies unfounded—but you can get a head start on your work.  And for me, now that the preparation is complete and the work is in front of me, I do appreciate the tools.  AI may not have saved the day, but it was a helpful assistant.
