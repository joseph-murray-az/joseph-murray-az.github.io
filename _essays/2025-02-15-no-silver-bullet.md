---
layout: essay
title: No silver bullet, or werewolves, only humans
tags: [product management insights, continuous evolution, product management journey]
---
 
### Abstract
 
Of the essays written by Frederick Brooks that make up the Mythical Man Month, perhaps the most famous is "No Silver Bullet: Essence and Accidents in Software Engineering."  In this essay, Brooks categorizes the tasks required to create software systems as essential or accidental and argues that expectations of future order of magnitude efficiencies that were realized by optimizing the accidental tasks were no longer realistic.  Instead, future gains would need to come from improvements in the essential tasks. 
 
While innovations in technology have made building software less difficult, this prediction has largely played out for the accidental tasks.  However, while addressing the accidental tasks, these innovations have also resulted in improved approaches to the essential tasks, many through techniques highlighted by Brooks, such as rapid prototyping and iterative development.
 
Corollary to the technical innovations is the division of the former designer role into the more specialized roles of product manager, engineering lead, and user experience designer, along with the uncoupling of the detailed technical requirements into the separate concerns of what to build and how to build it.  Given the right environment, this evolution allows the most powerful tool, team collaboration, to be fully leveraged to better address the essential difficulties of software development. 
 
### Introduction
 
In 1986, Frederick Brooks published an essay on software engineering that remains relevant today:  “No Silver Bullet: Essence and Accidents of Software Engineering."  

In this essay, Brooks described two types of tasks required for the creation of software:  The intellectual tasks of figuring out what to build and how to build it—which he called the essential tasks—and the mechanical tasks required to write and release code—the accidental tasks.  

The argument of No Silver Bullet was that the accidental tasks had been optimized as much as was practical and that any future “order of magnitude gains in software productivity” would need to come from addressing the essential tasks (Brooks, page 1).
 
While Brooks did not expect to attain improvements in the essential tasks to the same degree, he did highlight promising approaches to address the essential tasks, many of which have become common practice.  

These practices, along with the separation of roles and a more practical approach for defining system requirements, allow progress to be made in the most difficult of the essential tasks, deciding what to build.
 
### Accidental Improvements
 
Brooks defines accidental tasks as those that are not intrinsic to software creation but exist as peripheral or auxiliary activities that could potentially be eliminated. He explains:
 
> Most of the big past gains in software productivity have come from removing artificial barriers that have made the accidental tasks inordinately hard, such as severe hardware constraints, awkward programming languages, lack of machine time (Brooks, page 1).
 
One of the main improvements to the accidental tasks that led to substantial gains in software productivity was the introduction of high-level languages.
 
Prior to this time, developers primarily used low-level languages, such as assembler language code (ALC), for all programming tasks including the production of business software. However, the introduction of high-level languages, like common business-oriented language (COBOL), simplified this task.
 
To illustrate this improvement, consider the following code samples used to perform a numeric conversion and formatting operation, a common task when creating reports:
 
ALC (4 lines):
~~~
L         R2,BINNUM                    Load binary number
CVD       R2,PACKNUM                   Convert to packed decimal
UNPK      DECNUM,PACKNUM               Unpack to zoned decimal
OI        DECNUM+7,X'F0'               Fix the sign
~~~
COBOL (1 line):
~~~
MOVE BINNUM TO DECNUM
~~~
This task, which required four lines of code in ALC, was simplified to just one line in COBOL. These improvements not only made writing and maintaining code easier but also shortened the learning process for new programmers due to COBOL's more readable syntax.
 
As for the other two "most fruitful" improvements to accidental difficulties highlighted by Brooks—time-sharing and unified programming environments—while innovations in these areas yielded gains in their day, even then these gains were incremental at best.
 
### The search for more and the nature of software
 
The belief at the time was that the improvements that were being realized in computer hardware would also materialize in the production of software as well, a view that Brooks did not support:
 
> Not only are there no silver bullets now in view, the very nature of software makes it unlikely that there will be any--no inventions that will do for software productivity, reliability, and simplicity what electronics, transistors, large-scale integration did for computer hardware (Brooks, page 2).
 
This “very nature” of software is key:  Brooks described software as infinitely more complex than physical systems, as well as malleable and often changing, forming systems that are abstract, fluid, and frequently unpredictable.
 
Despite this complexity, there was an assumption that software creation was akin to manufacturing, with repeatable processes that could be measured and improved, and one approach to improving the efficiency of software creation was to focus on improving these processes. 
 
However, unlike consistent products like tin cans or airplane parts, software is more akin to a work of art, with each release potentially differing significantly from its predecessor. Consequently, attempts to apply manufacturing techniques like six sigma and total quality management to software development and validation have been largely unproductive.
 
Around the same time, in pursuit of productivity gains like those achieved by high-level languages, "code generators" were introduced. Early versions, marketed as fourth-generation languages, often proved rigid, inefficient, and limited, frequently producing code that required more time to customize and maintain than was saved. 
 
There have been other attempts, many of these also covered by Brooks, which include early developments in artificial intelligence, expert systems, and “automatic” programming (Brooks, pages 7-9).
 
### Contemporary innovations
 
Brooks presents two definitions of artificial intelligence: 
 
- AI-1: Using computers to solve problems that previously required human intelligence
- AI-2: The use of heuristic or rule-based programming to mimic human problem-solving strategies (Brooks, Page 7)
 
The first definition is broad and shifting and, as such, encompasses generative AI, voice, and image recognition. 
 
The second, which is discussed in a separate section on expert systems, used languages like Lisp and Prolog that provide conditional structures to mimic the logic used by experts to make decisions.
 
Although the approach has changed, the description of expert systems, coupled with the following section on “automatic" programming, could describe the contemporary use of generative AI, along with modern code generators and scaffolding tools, to facilitate coding, debugging, testing, and documentation, as well as the dissemination of good practice to inexperienced engineers.
 
Is this the silver bullet?  While the vision has not changed, advancements in both hardware and software since 1986 have now allowed what Brooks described as the "realization of useful expert advisors to the program developer" (Brooks, Page 9).
 
This description, applicable to both past aspirations and current innovations, primarily addresses improvements in the accidental aspects of software development. 
 
Despite the seemingly extraordinary results in writing and maintaining code, at least according to the research, these innovations have yet to fundamentally alter the essential challenges of software creation.
 
### Results, then and now
  
While the potential for improvements from these innovations should not be underestimated, especially as applied to the accidental tasks, evidence of order of magnitude improvements is hard to come by, being mainly anecdotal and only scantily supported by research.
 
This lack of research is not surprising since comparisons of technologies are necessarily limited to consolidated practices and languages and data for new innovations are, by definition, sparse (Lavazza, Page 45).
 
In addition, the research that has been done is far from perfect:  While numerous studies of software engineering productivity have been completed since 1986, a review of these studies reveals that, not only are the results fragmented and often contradictory, but perhaps surprising, there is no universal definition of software productivity—instead it varies according to perspective and context (Duarte, Page 1).
 
Nonetheless, there is some evidence that we are on the right path.  Early research specific to generative AI tools do show measurable improvements in developer productivity due to the use of intelligent autocompletion, automated code documentation, and unit test generation (Pandey, page 1).
 
Anecdotally, we can assume that adherence to conventions—practices supported by code generators and AI tools—along with the support for test case writing and documentation, will make systems easier to understand and test, thus contributing to lower maintenance costs.
 
Additionally, there is the benefit of training new engineers, which Brooks recognized as well:
 
> The most powerful contribution of expert systems will surely be to put at the service of the inexperienced programmer the experience and accumulated wisdom of the best programmers.  This is no small contribution (Brooks, page 9).
 
But for all of our beliefs, there is always a contrary point of view: It seems that the gains in productivity might be inversely related to the level of engineer’s experience; and some believe that the complexity of the software systems being produced today, especially as they age and trend towards higher entropy, will offset any improvements realized in productivity (Lavazza, Page 33-34).
 
Whatever the end results, thus far it seems that the premise of No Silver Bullet still holds.  Even if we discover a way to produce additional order of magnitude gains in the accidental tasks, these gains would not be enough to overcome the essential difficulties of software development.
 
And while the main essential task highlighted by Brooks, determining what to build, applies to the microcosm of the code being generated, it is even more important when applied to the macrocosm of the business.
 
### What is the right solution?
 
Of the essential difficulties explained by Brooks, the most important and difficult of these is determining what to build.  In fact, there have been many spectacular failures in the computer industry that have arisen from failing to get this right. 
 
A poignant example from the time of Brooks essay can be found by examining the projects that were being undertaken at Digital Equipment Corporation (DEC), the second largest computer manufacturer at the time, prior to their demise.  The products produced by DEC did not become obsolete overnight due to a single bad decision, but instead were the result of all the individual decisions made to maintain market dominance. 
 
For example, while the engineers at DEC were busy designing and building multiple instruction rollback technology, to bullet proof their powerful VAX machines, customers ultimately preferred the less fault tolerant but much cheaper personal computers being produced by IBM and others. 
 
The MIT engineers at DEC were thinking about their customers.  In fact, in the paper describing this technology, the authors wrote: 
 
> We made customer satisfaction the most important engineering goal, thereby placing a high priority on the machine's reliability (Brucker, page 71). 
 
It seems that thinking you know what your customer wants and knowing it are two different things.
 
The obvious way to avoid this mistake is to talk to your customer.  But this can turn out to be the fool's path as well, as Brooks pointed out: 
 
> For the truth is, the client does not know what he wants. He usually does not know what questions must be answered, and he almost never has thought of the problem in the detail that must be specified. Even the simple answer - "Make the new software system work like our old manual information-processing system" - is in fact too simple. One never wants exactly that (Brooks, page 15).
 
So how do you determine what to build, when neither you nor your customer seems to know what is wanted?  The key is to target the problem.  While DEC assumed the problem was unreliable systems, the real problem was cost.* 
 
There is no guaranteed solution.  In fact, even when a product proves successful, it often feels like an accident, and that is because it is.  Just as complex systems are unpredictable, our customers, being the most complex systems--humans--are also unpredictable.  But focusing on the problem rather than the solution allows these accidents to occur more often.
 
\* Tangentially, when hardware costs came down, the cost of software then seemed relatively high, which lead to the focus on efficient software development (Brooks, page 14).
 
### Ideas for improvement in essential tasks
 
Although Brooks was resigned to the fact that technological breakthroughs could not be expected to provide high levels of improvement, he did acknowledge that good work was being done that showed promise for incremental progress in the improvement of essential tasks, some of which are now common practice:
 
1. Build versus buy
2. Requirements refinement and rapid prototyping
3. Incremental development
4. Great designers (Brooks, pages 12-17)
 
The premise behind the first three is to efficiently provide concrete examples of the abstract concepts that are so difficult to communicate.  When an implemented experience is used as a tool to facilitate the discussion, it is more likely that all parties will arrive at a common understanding of the concept. By doing so, the chance of identifying and solving the actual problem is greatly enhanced.
 
### The transformation of the designer
 
The fourth idea, developing great designers, merits examination especially considering Brooks' assertion:

> The central question in how to improve the software art centers, as it always has, on people (Brooks, page 16).

Since this time, the role of "designer" has undergone a significant transformation, becoming more distributed and specialized. In contemporary software organizations, this role is often divided among several specialized positions including:

- Product Manager: Defines product requirements and features
- Technical Lead: Makes detailed design decisions and guides implementation
- User Experience Designer:  Concentrates on user experience and user interface design
 
(Other roles might include the architect or principal engineer, as well as development operations engineers but, because these roles often support multiple teams, they often operate outside of the teams).
 
This distribution of responsibilities allows team members to focus on specific domains within the software development process. 
 
### The evolution of requirements
 
While the distribution of software development tasks is both enabled by and necessary for contemporary software development, it also allows the problem of what to build to be addressed more efficiently.  This is important because, as Brooks points out, it is the most difficult of the essential tasks:
 
> The hardest single part of building a software system is deciding precisely what to build. No other part of the conceptual work is so difficult as establishing the detailed technical requirements, including all the interfaces to people, to machines, and to other software systems. No other part of the work so cripples the resulting system if done wrong. No other part is more difficult to rectify later (Brooks, Page 14).
 
At that time, while most software systems were created for a limited number of use cases—mainly related to data entry, analysis, and reporting—the development of these systems was difficult.  Because of this, the detailed technical specifications—which combined the what and the how of software development—were the most important thing to get right.
 
The importance has not changed:  It is long established that the most expensive defects in software are those of incorrect, unclear, or missing requirements (Stecklein, pages 9-11); and those that result in missing the market can lead to products that produce limited and diminishing returns which, unfortunately, represent a significant portion of overall software spending (Mulder, page 3).
 
However, along with the ability to distribute responsibilities, the definition of the detailed technical specifications is often divided into the separate concerns of what to build and how to build it. 
 
This does not mean that the problem of what to build is any easier, but it allows collaboration and rapid prototyping to be introduced early which can improve the odds of getting it right. 
 
In contemporary practice, we do not have to decide "precisely" what to build to get started, we can use intelligent tools to help us make educated and iterative guesses before engaging full teams in the product development process.
 
### The role of the product manager
 
Of the roles, the one traditionally focused on problem definition, a necessary part of deciding what to build, is the product manager.
 
More precisely, the primary objective of this role is to translate customer needs into a problem worth solving. This process involves addressing four key questions:
 
1. What are we doing?
2. Why are we doing it?
3. What does success look like?
4. How do we measure it?
  
The product manager's role can be seen as laying the foundation for the product by analyzing and clarifying the problem, determining the value proposition, and establishing success metrics. 
 
This is often done in collaboration with the user experience designer and lead engineer:  In fact, there is often overlap in these roles, a situation that appears to be on the rise, facilitated by the availability of intelligent tools in each domain.
 
Even after the project is underway, the product manager continues to collaborate with the team to plan increments, gather feedback on results, and measure progress toward the defined goals.
 
### On collaboration
 
While rapid prototyping is a powerful tool for problem definition and discovery, perhaps the most powerful tool for addressing the essential tasks is collaboration, especially when applied to discovery of the problem.
 
Collaboration can take on many forms, and is the subject of numerous studies, but for the product manager seeking to clearly define the problem, there are some simple practices that provide key benefits.
 
For example, presenting a problem to an audience can help both the presenter and the audience arrive at a better understanding, not just of the problem, but also of the context and circumstances, which can lead to the right solution.
 
Bringing in additional viewpoints may reveal that the problem is less complicated than originally thought or possibly that it has already been solved.  Sometimes you discover that a solution has been proposed in place of the problem, and the work is to discover the problem that brought you there.
 
This process can be reciprocal: Discussing the problem with the user can lead to better trust, discussing with the team can lead to better teamwork, and both can lead to better results.
 
This work does not end with the problem definition or the determination of what to build, but continues as the product is produced in increments, and each increment is validated and refined, until enough increments have been delivered to realize success.
 
This process can be seen as a conversation between the product manager and the team, as new information is discovered, and each decision is made.  Stakeholders play a role as well, and each role can vary depending on the circumstances.
 
Thus, enabled by innovation, leveraged by team structure, facilitated by separation of the problem statement, and resolved by humans engaging in teamwork and collaboration, the essential tasks of software creation can be productively and often successfully addressed.
 
### Conclusion
 
Entire careers, from college through retirement, have been completed since the publication of No Silver Bullet in 1986 and, while the world seems to have transformed since that time--especially the rapidly changing world of technology--the premise of the essay, because it is based on the human aspect at the center of software product creation, has remained unchanged.
 
There is no doubt that progress has been made: Innovations since facilitate both the accidental and essential tasks, especially when intentionally applied, and with a plan.  But the challenge is still there.
 
And if it were not, would this still be worth doing?
 
### References
 
Brooks, Frederick. No Silver Bullet: Essence and Accidents of Software Engineering. The University of North Carolina at Chapel Hill, 1986.  https://www.cs.unc.edu/techreports/86-020.pdf
 
Bruker, W.F. and Josephson R.E. "Designing reliability into the VAX 8600 system," Digital Tech. J. Digital Equipment Corp., vol. 1, no. I, pp. 71-77, Aug. 1985. http://www.dtjcd.vmsresource.org.uk/pdfs/dtj_v01-01_aug1985.pdf
 
Pandey, Ruchika et.al. "Software Development: Evaluating the Efficiency and Challenges of GitHub Copilot in Real-World Projects."  Cornell University, Jun. 2024.   https://arxiv.org/pdf/2406.17910
 
Lavazza, Luigi, et al. "An Empirical Study on the Factors Affecting Software Development Productivity." e-Informatica Software Engineering Journal, vol. 12, no. 1, Feb. 2018, pp. 27-49.
DOI:10.5277/e-Inf180102
https://www.researchgate.net/publication/322399735_An_Empirical_Study_on_the_Factors_Affecting_Software_Development_Productivity
 
Duarte, Carlos Enrique C. “Software Productivity in Practice: A Systematic Mapping Study.”  Software. May 2022,1, 164–214.
DOI:10.3390/software1020008 
https://www.researchgate.net/publication/360434335_Software_Productivity_in_Practice_A_Systematic_Mapping_Study 
 
Stecklein, Jonette M., et al. "Error Cost Escalation Through the Project Life Cycle" NASA Johnson Space Center, 14th Annual International Symposium.  June 2004, ntrs.nasa.gov/api/citations/20100036670/downloads/20100036670.pdf. Accessed 13 Feb. 2025.
https://ntrs.nasa.gov/api/citations/20100036670/downloads/20100036670.pdf
 
Mulder, Hans.  The Chaos Report.  January 1994.   https://www.researchgate.net/publication/263849222_The_Chaos_Report 
 
### About the Author
 
Joseph Murray is a practicing product manager who has worked in the software industry for over 30 years.  

During this time, he has written his fair share of ALC and COBOL, as well as SQL, Java, Ruby, and Python for large enterprises such as Electronic Data Systems, American Express, and SAP, as well as boutique consulting and startup software firms. 
 
He holds a Bachelor's in Computer Information Systems and English Literature as well as a Master's of Business Administration. 
 
In his current role as Senior Product Manager for StrongMind, he is responsible for the creation of generative AI and related products for education. 
 
For more reflections on product management and the software industry, see [Random Thoughts on Product Management](https://duckduckgo.com)
