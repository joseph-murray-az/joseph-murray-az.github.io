---
layout: post
title: Fun with prompts
---

Like most in tech, I set out to learn more about the latest developments in artificial intelligence.  This field seems new, although it has been around for a while.  In fact, during my undergraduate studies in the last millennium, I took my first AI class.  We used Lisp or Prolog or some such language, all I remember now from my "intelligent car dealer" application is a cascade of if statements:  If four wheels, if four doors, if sedan, etc.  Yet, despite this academic experience using "cutting edge" technologies, and contrary to my professor's opinion of the future of the workplace, after graduating, I spent the next five years writing mainframe assembler language code.  

But today is different.  Today,  I am able to use a large language model and a generative pre-trained transformer to learn how AI works.  As an example, the following is a list of the topics that I encountered in an article<sup>1</sup> I read, followed by the questions I asked ChatGPT:

| Topic | Prompt |
|---|---|
| Sentiment analysis |  What sentiment and level is expressed by the statement "you are stupid?" |
| Chain of thought |  Create a Python class to illustrate a vector store database search.  Do this by breaking the task down into smaller subtasks and describe each task before you execute it. |
| LLM+P | Plan to create a course titled The Rise of the AI Engineer<sup>2</sup> and describe the steps of this task using Planning Domain Definition Language (PDDL). |
| Reflexion |  When writing and running Python code, how do you decide to abandon a task and to try again? |
| Memory | What are the different types of human memory? |
| Tool Use | What is the current temperature in Tokyo Japan and the stock price of Alphabet stock? |

For each of these questions, ChatGPT either provided me with an answer or demonstrated a technique.  For example, from the first question I learned that the sentiment is negative and, while the context matters, it is not very negative or slightly negative.  For the second question, I learned not to give up when ChatGPT does, instead ask ChatGPT to breakdown the task.  (Another approach is to breakdown the tasks myself and execute them one at a time--this was especially important when asking ChatGPT to perform analysis on data.)

This is similar to how I learned to program during my undergraduate studies: not by reading or attending lectures, but by writing, compiling, and running code.  The difference in this technique is that it is possible to do all the work using the English language.  

There is no class, no project, nothing is apparent or scripted; nonetheless, I expect that this is an inflection point.

<sup>1</sup> https://lilianweng.github.io/posts/2023-06-23-agent/

<sup>2</sup> https://www.latent.space/p/ai-engineer/
