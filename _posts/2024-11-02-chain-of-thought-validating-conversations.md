---
layout: post
title: Chain of thought - validating conversations
tags: [validation, generative, chatbots]
---

In my last post, I described the prompt and prompt flow that review and rate both the prompt and its output.<sup>1</sup>  This has worked fairly well for the initiation of our chatbot and provides a repeatable test that can be used to validate future changes to the prompt.  But a generative AI chatbot requires additional testing beyond prompt validation.  In order to describe this, the following introduces and explains some new terms. 

**Turns and more**

The Amazon Bedrock Playgrounds now include Text and Chat.  Text is described as a prompt that allows you to “generate a single response from a model” while Chat allows you to “generate a conversation by iteratively submitting prompts and replying to those prompts."  This illustrates the difference between a generative AI use case, which uses a prompt to generate a specific output, and a chatbot use case, which provides the ability to converse.  For the chatbot use case, the following terms and definitions are useful:

- Single turn:  One exchange between the user and the model, e.g. the generation of an image
- Multi turn:  A single turn repeated over the course of a session, e.g. a conversation
- Open conversation:  Can cover any topic, e.g. ChatGPT
- Closed conversation:  Conversation is restricted to specific topics, e.g. customer support
- LLM as Judge:  Using a large language model to “judge” the output

Our prompt validation above tests a single turn exchange:  The prompt provides the data that will be used for the exchange along with instructions to the model.  These instructions include the persona, steps for data preparation, guardrails, and the initial user input for the exchange.  As a best practice, XML tags are used to separate each part of the prompt as:

- <document&gt;text</document&gt;
- <rules&gt;instructions</rules&gt;
- BEGIN DIALOG User:  _Question about the document_

The model then processes the document according to the instructions to prepare for answering questions, answers the first question from the “user,” and then is ready for the conversation.  Once the user engages, the exchange takes another turn and thus becomes multi turn, which introduces the need for additional validation.

**Additional challenges**

Our chatbot is designed to act as a tutor for a student and, as such, it should be able to converse about specific course material.  The challenge, then, is to be able to validate a multi turn, closed conversation.  This can be difficult because, just like human conversations, our chatbot may fall out of character, go off on tangents, become forgetful, or trail off before completion.  A thorough validation of this chatbot will need to consider the  following:

- Role Adherence:  Is the chatbot able to maintain its persona?
- Conversation Relevancy:  Are the responses relevant to the questions and general topic?
- Knowledge Retention:  Does the chatbot remember information from earlier in the conversation?
- Conversation Completeness:  Is the chatbot able to provide comprehensive solutions?
 
The challenge of measuring chatbot conversations is that each of these qualities of a conversation is subjective.  A person might describe a conversation as “boring,” “irrelevant” or even “stressful,” all of which are human judgements.  These judgements might be described as a feeling or sense but, even when pressed, it is difficult to produce specific examples to support the judgment, much less to quantify it.  Thus, for this type of testing, the traditional baseline approaches are being replaced by an approach that leverages the large language model itself to produce these judgements.

**LLM as Judge**

This idea is to use a large language model to mimic human judgements of the output of another model.  While not perfect, this solution does offer many advantages over manual testing, namely that it can be repeated.  As an example, when the entire conversation is fed into the model, along with the proper prompts, the model can review the conversation and provide a judgement, say on role adherence, usually expressed as a rating from 1 to 5.

In the paper “G-EVAL: NLG Evaluation using GPT-4 with Better Human Alignment,” the authors discuss the advantages of using the LLM as Judge along with a framework to generate the evaluation using the following components:
 
- Prompt: A natural language prompt that defines the evaluation task and desired criteria
- Chain-of-thoughts (CoT): A sequence of instructions that explain the detailed evaluation steps
- Scoring function: Uses the LLM to calculate a score based on the probabilities of the return tokens<sup>2</sup>

The prompt is given a task and asked to break the task down into steps.  This is referred to as Chain of Thought, which is a method that can be used to improve the output of large language models.  Along with this task, evaluation criteria is given to describe the output of the task as a rating on a specific aspect of the conversation.  In the paper, the model is given an article along with a summary of that article produced by another model and asked to rate the coherence of the summary on a scale of 1 to 5, with 5 being the highest score.  The results of this type of evaluation far exceeded those of other approaches.

This article is not specific to chatbot testing or conversation validation, but this approach seems to be the most promising and deserves more exploration.  This exploration will be done next week with a summary to follow.  Stay tuned.

<sup>1</sup> Rodriguez, Antonio.  Evaluating prompts at scale with Prompt Management and Prompt Flows for Amazon Bedrock.  AWS Machine Learning Blog, 05 Sep. 2024, https://aws.amazon.com/blogs/machine-learning/evaluating-prompts-at-scale-with-prompt-management-and-prompt-flows-for-amazon-bedrock/

<sup>2</sup> Liu, Yang, et al. G-EVAL: NLGEvaluation using GPT-4 with Better Human Alignment.  Microsoft Cognitive Services Research, 23 May 2023, https://arxiv.org/pdf/2303.16634
