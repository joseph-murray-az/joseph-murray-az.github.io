---
layout: post
title: Initial thoughts on chaos theory
tags: [systems, complexity, patterns]
---

> Without consciousness that that which we think is the very same as what we thought a moment before, all reproduction in the series of representations would be in vain.
> 
> ~Immanuel Kant, The Critique of Pure Reason

In the Critique of Pure Reason, Immanuel Kant describes the sequence of thought that is necessary to understand concepts; without this sequence, we would not have the ability to recognize the world around us.  When thinking about systems, then, especially in the context of business, it is natural to view the operation of a system as a series of events that occur in sequential order, supply chain processes being an example.  But what if we were able to think of systems as a collection of events that occur at a single point in time?  Would these “slices of event time,” perhaps taken at regular or random intervals, reveal interesting or even useful patterns?  This seems to be the suggestion of chaos theory.

**Complex systems**
 
According to systems thinking, a system is a whole that contains two or more parts, each of which can affect the properties and behavior of the whole.  It is useful in theory for product managers to think about the effect of a new feature or improvement to the system as a whole, especially considering that improvements to a particular part of a system often degrades the overall performance of that system.  But this is difficult to do in practice, even for small systems, and as systems grow larger and more complex our ability to understand the complete picture diminishes.  This is one of the reasons we develop in small increments and run experiments:  Rather than trying to guess at the effect of a change, incremental experiments allow us to experience the effect, to learn, and to adjust.  But why are we not able to predict the effect of changes to a system?  I believe chaos theory gives us a hint.
 
**Chaos theory**
 
Chaos theory recognizes that even a tiny change in one part of a system can have large and unpredictable consequences elsewhere in the system.<sup>1</sup>  This idea was popularized by meteorologist Edward Norton Lorenz in the 1960s, who used the metaphor of a butterfly flapping its wings in Brazil causing a tornado in Texas to illustrate the idea.  (A concrete demonstration of this effect can be seen in the side by side videos of a pendulum on a pendulum in Wikipedia.)<sup>2</sup>  One way that these types of systems, for example the weather, can be studied is by taking a snapshot of the system at a point in time called a phase space.  When enough of these snapshots are taken they can be used to understand the behavior of the system over time and to look for patterns.  These patterns that occur within unpredictable systems are described by mathematicians as “fractals.” <sup>3</sup>  An illustration of a fractal is the Koch Snowflake. <sup>4</sup>
 
**The search for patterns**
 
In most of the literature, computers are used to illustrate or replicate chaotic systems found in nature.  But what if we used computers to create snapshots of computer systems, taking a selection of events as a phase space, and searching the resulting snapshots for patterns that might be used to better understand these systems themselves?  After all, just like the weather, computer systems are subject to a variety of changes:  On any given day, engineering teams release updates, users input data, synchronous and asynchronous processes run, events are triggered, and so on.  With all of these events occurring, many of which are unpredictable in themselves, the system as a whole can be seen as entirely unpredictable.  As a chaotic system, then, it seems intuitive to apply the practices of chaos theory to gain a better understanding of computer systems.

While there might be benefits to understanding system patterns for those that use and support the system, what perhaps might be of more interest to the product manager are system-user patterns since these might reveal unseen problems that lead to new opportunities for features that we failed to imagine in our world of thought after thought.

<sup>1</sup> https://www.space.com/chaos-theory-explainer-unpredictable-systems.html

<sup>2</sup> https://en.wikipedia.org/wiki/Butterfly_effect

<sup>3</sup> https://www.its.caltech.edu/~matilde/LiYorke.pdf

<sup>4</sup> https://science.howstuffworks.com/math-concepts/chaos-theory6.htm![image](https://github.com/user-attachments/assets/c86185c9-ed11-4c85-abae-2ce4bf129534)
