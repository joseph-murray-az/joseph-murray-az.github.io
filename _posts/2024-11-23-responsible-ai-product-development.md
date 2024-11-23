---
layout: post
title: Responsible AI product development
tags: [validation, generative, chatbots]
---

Generative AI has the potential to shape our individual and collective reality.  This potential has already become manifest as evidenced by the occurrence of deep fakes and synthetic media.  Although highlighted less often, the same possibilities exist for the generation of text material as well.  While most models are trained using internet data, which originates from humans, just as human searches and social media algorithms can be influenced by minority interests, generative AI probabilities can be influenced as well.  

The foundation models tend to produce a specific response to a query based on the probabilities that are created during training.  However, this tendency can be influenced through techniques such as fine-tuning which, by changing the probabilities, “persuades” the model to produce alternate responses.  This ability can be used to improve the effectiveness of generative AI products, for example to help an AI tutor correctly answer questions about specific course material.  On the other hand, if done incorrectly or even maliciously, this and other techniques could result in incorrect answers that lead to bad decisions and erode trust.  

And the erosion of trust is contrary to good product management.  In order to produce products that solve real problems, we need products to be used and, especially for generative AI products, this requires us to build trust:  Building this trust is the primary aim of responsible AI.

**Seeing is believing, but feeling is truth**

A while back, I had an experience that fundamentally changed my understanding of human perception. I went to see Flip Orley<sup>1</sup>, a "comic hypnotist," at the Improv Comedy Club.  Going into the show, I thought this would be a staged act and I was curious how it would unfold.  To my surprise, my roommate’s fiancé, Michelle, volunteered to go on stage along with about 30 other others to participate in the show.  The hypnotist appeared to put everyone on stage under hypnosis and, when he asked if anyone wanted to leave, Michelle was the first to raise her hand and be allowed to exit.  This would have confirmed my skepticism.  However, upon returning to our table, Michelle confessed to being fully “under” and, hating the loss of control, she took the first opportunity to be awakened.  This confession, along with the show that followed, changed my mind about the power of hypnosis to modify human behavior and perception.               

Philosophers have long argued that what we perceive is merely appearance, i.e. representations of the world around us created by our minds.  This seems necessary considering the overwhelming amount of data present in any given moment—including extrasensory data, like ultra and infrasonic sound, as well as the electromagnetic spectrum, like ultraviolet and infrared waves—all told, far more than our limited sensory organs can process.  In order to create a coherent and cohesive experience from both perceived and missing data, our brains compensate by filtering out irrelevant data and filling in missing information.  This inherent survival mechanism operates similarly in both the physical and the virtual world.  While our nature can cause us to miss queues and misunderstand events in the real world, these possibilities are amplified in the virtual world which already requires a certain suspension of disbelief upon entry.

**Oversight includes conversations**

When developing chatbots that rely on generative AI, not only do we need to prevent or mitigate hallucinations and compensate for missing data, but we also need to prevent chatbot users from jailbreaking prompts and taking our chatbots off track.  Thus, to ensure that the conversations between chatbots and users are safe, informative, and helpful, several measures can be taken which include good design, the specialization of tasks, well written prompts, and the implementation of guardrails.  However, despite any and all proactive measures, the thoughtful capture and analysis of data, which includes conversations, is required as well.

The capture of conversations can lead to trust and privacy concerns.  This can be somewhat alleviated by informing the user of both the storing of the conversation and potential use for analysis, as is already common in recorded conversations.  In addition, alternate options to chatbot use should be available so that chatbot transactions are understood as an option and not a requirement.  For example, a customer service scenario would include the ability to bypass the chatbot and contact a human service representative.

That being said, the capture and analysis of conversations is important not just for improving the chatbot but for the safety of users as well.  For an AI powered tutor, the ability to review conversations is necessary in case a student expresses dark or violent thoughts.  In the real-world, perceptive teachers are able to detect unsafe situations and intervene on the behalf of students, to provide help, support, and protection.  But in the online world, outside of live sessions, the only means a teacher might have to recognize when a student is facing a difficult or even dangerous situation is through the monitoring and flagging of conversations.

Conversation analysis

The second reason to capture conversations is to enable conversation analysis.  This is a growing practice that is particularly applicable to the creation of safe chatbots.  However, since this is a topic unto itself, I will save an explanation of conversation analysis until my next post.

<sup>1</sup> https://www.fliporley.com/
