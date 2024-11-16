---
layout: post
title: The return to discovery
tags: [AI, generative, chatbots]
---

The previous two posts concerned chatbot validation but, as in real product development, activities do not always occur in chronological order--some are sequential, some concurrent, and many are repetitive.  As a reflection of real world events, this post turns from evaluation back to discovery.  Thinking through validation has been productive since this activity has revealed that, when it comes to chatbots and conversation in general, establishing trust with users is a critical component of success.  This knowledge then provides a refined focus for discovery as reflected in an updated central question:  What does it look like for a chatbot to establish trust?

**Incorrect answers reduce trust**

Although at the start of development a session was spent reviewing existing chatbots from competitors, we were not sure what we were looking for at the time.  There were many examples that appeared to be nothing more than a dressed up ChatGPT--it was obvious that this was not what we wanted to create--and this was the main discovery.  However, since then it seems that there is one organization in the education space whose product appears to be in the vanguard.  And as a result, more users have been posting reviews which reveal shortcomings of the chatbot experience:  The most important of which is that the chatbot can produce incorrect answers.  This is a problem we are also experiencing while testing our own chatbots and therefore worth exploring.

**Setting expectations**

The aim of chatbot as a tutor should be to reproduce as closely as possible human interaction.  Humans make mistakes, so there may be some tolerance for incorrect answers, but when you ask an expert a question relating to a topic in his or her area of expertise, it is more difficult to overlook even a small misstatement.  To combat this, many organizations go out of their way to label their chatbot as "beta," "experimental" or "prone to occasional error."  In a sense, rather than claiming to be an expert, the chatbot's claim is to be "developing" expertise.<sup>*</sup>  

**Menus and...**

Another way to build trust is to ensure that the answers are correct.  Organizations appear to be using two techniques to do this:  

1. using a menu system to guide the conversation 
2. using a fine-tuned model or knowledge base to support the conversation

For the first, this appears as suggested requests to help guide the user.  For example the chatbot might present an option:  "Would you like me to summarize this document?"  If the user selects this option, a structured prompt can be used to help ensure the response is correct.  This prompt might include a defined section for the document, a thinking area for processing of the document, and a set of rules for the output, each section separated by XML tags.  

In addition, when the request is known in advance, the chatbot is able to choose whether to perform the task by itself or to use a tool to help process the request.  As an example, since large language models are known to make mistakes in math, a calculator or statistical programming language can be used for calculations, then the presentation of results can be completed by the model.

**...models**

The second technique, using a fine-tuned model or knowledge base can prevent incorrect answers due to missing information or hallucinations.  In the first example, a fine-tuned model might include material that was not available when the foundation model was trained.  A common example of missing information is illustrated when the user asks the foundation model who won a recent sporting event and the model is unable to answer.  When the model is fine-tuned, the results of recent sporting events can be added to the foundation model which retains the results of past events.  

Using a knowledge base is similar to fine-tuning and perhaps more useful for online learning tutors.  In this case, the knowledge base can be loaded with internal documents that would not be widely available and thus would not have been included in training.  For an online school, this might be the course materials.  This knowledge base then can help ensure that answers and explanations provided by the chatbot are aligned with the course lessons.  In this case, incorrect answers would be less frequent since the course material has presumably been vetted.

**Further research**

The product tear down may not reveal details of internal decisions and technical solutions but there are clues.  Training videos, product documentation, and user reviews help to reveal problem areas and, in some cases, potential solutions.  For others, further research and experiments may be needed.  And this is the busy and difficult work that occurs at each stage of the development process that allows us, step by step, to iterate and improve.

<sup>*</sup> Of course, there is an expectation that at some point in the future the chatbot will truly become an expert.  Whether the underlying foundation models and technologies are able to fulfill that claim or not remains an open question.
