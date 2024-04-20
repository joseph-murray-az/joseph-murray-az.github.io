---
layout: post
title: Using the specific to discover the general problem
tags: [software design, latex syntax, feature prioritization]
---

Borrowing a concept from philosophy, I believe that the product manager should aim towards discovery of the general even as we work on specific problems.  A specific problem may be an issue described by a single user, perhaps communicated through a support ticket, or it might be a problem experienced by a single group or subgroup.  The general problem, on the other hand, is experienced by all users, or even by all people.  Since I am currently working on a markdown editor, I will use this as an example.

One of the features that we added to this editor was the ability to include mathematical formulas using LaTeX, which is a syntax that allows plain characters to be rendered using symbols.  For example, the formula to calculate the size of a power set given n elements can be constructed in plain text as:

\|P| = 2^n

When rendered, these characters appear as:

$|P| = 2^n$

A specific problem that was raised was that not all users were familiar with the LaTeX syntax, so we were asked to add a popup formula keyboard to help these users be more efficient.  Since most of the group had been trained, this was a specific (and likely temporary) problem that applied to only a subset of the group.  

The effort to add a keyboard was fairly low.  Once we settled on the 15 symbols that could be used to construct basic math operations, including arithmetic, exponentiation, logarithms, trigonometric functions, basic algebraic equations, and basic geometry formulas, we estimated the implementation would take less than a day.  

We chose, however, not to add the keyboard.  Instead, we worked towards a better understanding of the general problem.

The general problem was that this subset of users were located in a new remote office and there were no experienced editors available to provide training.  To solve this general problem, and avoid adding the keyboard, LaTeX guides and a license for ChatGPT was provided to this group.

But why all this effort to avoid one day of work?  Consider the real estate which is, in this case, the ribbon at the top of the editor.  Just like the shelving units of a retail store, this space comes at a premium.  Editor features are generally laid out from left to right across the ribbon in order of use and usefulness.  This enables those working in the editor to be more efficient.  If we were to add the popup formula calculator to the ribbon, while it might benefit the few, it would use space that could be more productively used by everyone else.

Consider this:  The home ribbon for Microsoft Word contains 40 buttons.  If we plug this into the powerset formula above we get 2<sup>40</sup> or 1,099,511,627,776 potential button combinations.  Imagine trying to find the most efficient layout given this ocean of possibilities!  It can be mind boggling how small decisions can add up!  And there is more:  The LaTeX syntax is able to represent the thousands of symbols used in math, science, engineering and other disciplines.  How likely is the request for "just one more button?"

The ability to look into a specific situation in order to discover the general problem is part of the art of product management.  Like all arts, when the general principles are understood, the results can be efficient, elegant, and worthwhile.
