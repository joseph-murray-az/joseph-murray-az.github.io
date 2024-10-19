---
layout: post
title: When the solution leads to the problem
tags: [chatbots, validation, non-deterministic]
---

> The understanding therefore does not find some sort of combination of the manifold already in inner sense, but produces it, by affecting inner sense.
>
> ~Immanuel Kant, Critique of Pure Reason
>

These past few weeks, we have been working on an AI powered chatbot.  For this effort, as with any product, we started with the problem to be solved--although AI is now available and popular, it is only useful if it can solve real problems.  The next step, once we defined the problem, was to design and create an experiment.  However, as I am testing what has been produced by the initial team, I realize that I have more to learn.  For starters, while I have used chatbots, I am only now starting to think about what can go wrong.  Thus, for this project, in a sense I am still finding my own way and not quite ready to provide clear direction for others.  In order to make some progress towards this goal, as well as mark any lessons in near real-time, I set this signpost.

The problem statement is:  How might we provide expert help to online students at any time and in a cost effective manner?  As context, students enrolled in online classes frequently need help with their coursework at times when live teachers and tutors are not available.  The cost qualifier is important, since it serves as a constraint, a reminder that any solution considered needs to be cost effective.  For example, a solution might be to provide a 24 hour helpline with live experts, but this approach would not be cost effective—imagine the number of teachers and tutors that would need to be hired to cover swing shifts, night shifts, weekends, and holidays.  In addition, true expertise in academic subject matter is difficult to find, and existing expert teachers are already engaged helping the majority of students as they are working on their studies, which is mainly during the weekday.

Even with the availability of a potentially cost effective technology, we do not yet know if an AI powered chatbot is the right solution.  But we do know that no solution will solve a problem for users without engagement.  Thus, the first pass was to create a low-cost prototype in order to get feedback from potential users as well as experts, and our original idea was to create a chatbot button to gage interest.  However, the technology used for the prototype proved easier to implement than expected, the effort gained momentum and, when my team officially took over, we ended up with not one but two chatbots, both of which are functional.

And this is where the next problem begins--how can we ensure that these chatbots will stay on task?  Most of the software that I have helped produce is based on classical algorithms which are deterministic, meaning that the software can be tested in a standard and reproducible way.  But generative AI based solutions are non-deterministic and the complexity of the behavior means that the outputs are less predictable.  It was only after the chatbot mislabeled results during a demo--results that had been correctly labeled during validation--that I experienced the unpredictable nature of non-deterministic behavior.  And, as they say, seeing is believing, but feeling is the truth.  And now, I feel that I cannot rely on what we built.

So that experience leads to the question:  What can go wrong?  And, for non-deterministic behavior, I have to admit, I do not yet know.

