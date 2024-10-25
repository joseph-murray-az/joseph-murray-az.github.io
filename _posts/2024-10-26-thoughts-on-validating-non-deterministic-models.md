---
layout: post
title: Thoughts on validating non-deterministic models
tags: [non-deterministic, testing, validation]
---

Product managers are not only responsible for determining measures of success for a product, but also for product validation prior to release.  This validation may include informal testing by the product manager or more formal testing by a quality assurance team.  When validating and testing conventional applications, there are standard techniques that can be relied on to ensure quality--exploratory, negative, and boundary testing are some examples.

In conventional testing, though, there is an underlying assumption that the system under test is stable and deterministic, meaning you can set specific input variables and expect a precise output. For example, if you were testing a function that adds two numbers, and you set your input variables to 2 and 8, the output will always be 10. 

But how do you test generative AI applications which are, by nature, non-deterministic?  As an illustration using the example above, what if your function could return any of the following?

- "10"
- "An addition equation"
- "Two plus eight equals ten"
- Or various other responses

And what if the value returned could vary on subsequent runs?  At the very least, the non-deterministic behavior of generative AI applications creates new challenges for product validation.

**Misconceptions about generative AI applications**

This question highlights a misconception about generative AI applications for which inherent randomness is not a defect but a feature--like human conversation, the variety of the output is what makes it interesting.  For example, if you create a generative AI chatbot, which relies on a large language model to provide answers to questions, while the answers should be correct, the phrasing of the answer may emphasize some aspects over others depending on how the question was asked.  While the phrasing can be different from model to model, it can even vary for the same model depending on training or parameter settings.

This is inherent due to how these models work.  Large language models use probabilities when constructing outputs. They are trained on large volumes of text and, during training, they learn to predict the probability distribution of the next word given the previous context. However, in use, they do not simply choose the next most likely word but instead sample the probability distribution, which adds variety to the output. This sampling is influenced by the temperature, which can be adjusted to be more or less deterministic, and by the sampling methods. There are many other factors that contribute to this seeming randomness of response, but they all result in non-deterministic output.

**Start by crafting and testing prompts**

It would be impossible to come up with an exhaustive list of instructions.  Thus, it is necessary to rely on the model to handle unexpected input and unforeseen circumstances.  However, it is possible to verify the prompt, and one way is to use a generative model to do so.  This requires writing a separate prompt to instruct the model to act as an "AI prompt expert" in order to evaluate and rate the prompt.  The AI model can also be asked to provide suggestions for improvement.  While not foolproof, this is an easy, low cost way to ensure quality in the prompt, and this validation can be automated.  (You can even use a different AI model than the one used by your prompt to validate the prompt, which might be similar to getting an outside opinion.)  An example of this in practice using the AWS Bedrock Prompt Manager and Prompt Flow is linked below.<sup>1</sup>

**Next steps - validating the output**

In addition to prompt validation, another idea is to use an AI model to validate the output of the generative AI application.  In order to do this, the output would need to be captured and sampled in order to create a feedback loop.  Since this requires the application to be in use, and I have not reached that phase of the project yet, I will cover this idea in an upcoming post.

<sup>1</sup> Rodriguez, Antonio. (2024, September 5). Evaluating prompts at scale with Prompt Management and Prompt Flows for Amazon Bedrock.  AWS Machine Learning Blog. https://aws.amazon.com/blogs/machine-learning/evaluating-prompts-at-scale-with-prompt-management-and-prompt-flows-for-amazon-bedrock/
