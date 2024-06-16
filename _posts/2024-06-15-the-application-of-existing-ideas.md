---
layout: post
title: The application of existing ideas
tags: [ideas, discipline, efficiency]
---

>Discipline is the self-control that is gained by requiring that rules or orders be obeyed, and the ability to keep working at something that is difficult.
>
>~Brittanica Dictionary

The longer we work at a discipline, the more engaged we become, the greater our ability to keep working even when the work becomes difficult.  But continuing to work hard at something that is difficult is not always the most efficient way to progress.  Sometimes progress requires a detour, or even a reversal, to get to its destination.  This has been my impression as I reflect on the past year.

Why did I choose to write and publish a blog using Jekyll and GitHub pages?  There is a long answer to this question, which starts with a setback, but the short answer is to learn.  I wanted to learn the technology, I wanted to learn the craft.  And while I currently have no readers, which is a sort of freedom, lack of progress does not mean lack of plan.  And, besides, I realized another albeit short-term reason:  There is application to what I am doing at work, and vice versa.  As an example, I recently realized an answer to a work problem while doing my non-work work.  Let me describe the problem.

We are building a new product that leverages AI to facilitate the creation of online courses.  This new product is based on existing products and practices that have been used at StrongMind during the course of the past two decades.  In this case, curriculum developers, which might be designers, writers, editors, artists, subject experts, and their managers, spend months creating the hundreds of components that make up a course.  When this work is done, all of these components are assembled and published for use by teachers and students.  The problem with the current process is that defects in the course are not visible until after the course has been published.  And, similar to software development, the later in the process a defect appears, the more expensive it is to correct.  

When you commit a post in GitHub pages, however, GitHub actions are run that validate the markdown (linter), check for broken links (link checker), and review the converted HTML (html validator).  These actions occur before the post is published and, if defects are found, the process fails with an error.  Because the defect is detected before the post is published, the risk that the user discovers the defect is reduced, as is the time needed to test the site.

Although the context might be different (yet similar in many ways), this same process can be applied to the creation of online course contents; due to the volume and number of people engaged, the cost savings can be much more dramatic as well. The process may look like this:

- Check course settings, if missing, abort, otherwise, continue
- Validate markdown, if malformed, abort, otherwise, continue
- Check for broken links, if found, abort, otherwise, continue
- Check generated HTML, if missing, abort, otherwise, publish

All of this can be done during the creation of each component, as the components are assembled, and again as the assembled course is prepared for publishing, allowing defects be detected and corrected as early in the process as possible saving time and effort.

Learning a tool or new technology, even an unrelated one, can provide cross application ideas that can be used to solve existing problems in new ways.  As you are learning, you may recognize patterns that are useful in other contexts.  And this is not the only way:  There are so many experiences in life that can be mined for ideas, the activities of a teacher, the writings of a philosopher, the events that occur during a vacation, all experiences in life contain ideas and patterns that can be discovered by those who take the time to look.  So why spend time searching for the next new idea when there are an infinite number of existing great ideas waiting to be discovered?  This is the more efficient and effective way.
