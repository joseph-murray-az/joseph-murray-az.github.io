---
layout: post
title: An ending point
tags: [Product Brief, Data Visualization, Hypothesis Testing]
---

My previous post covered the product brief, which is the starting point for a new product or feature, and introduced word association as a method to help get started.  Another part of the product brief, and probably the most important, is the measures of success.  This requires data.  And unlike word association where the goal is to generate more thoughts or data points, for data it is often the sheer volume that hides the relations.  The goal is to summarize the data in order to formulate a hypothesis.  

So how is this done?  Large organizations often hire data analysts that can help the product manager to select and analyze data.  But for a small, fast moving organization, this type of support is rarely available.  In addition, for a prototype or new innovation, empirical evidence or instinct might even be preferred to avoid the delays required for formal data analysis.  In these cases, quick experiments can be used to determine if a feature based on a personal opinion is worth pursuing.  But as more people join the effort and the cost of mistakes increases, the savings that can be realized from the additional effort for validation can be worthwhile.

Before an organization is large and complex enough to justify hiring a data analyst, the product manager can use simple tools to visualize data to help formulate a hypothesis.  To do this, you might download a sample of relevant data, and identify the columns that contain categorical versus quantifiable values.  A simple way to think of this is that the former consists of columns that cannot be summed, for example those that contain words, while the latter contains the columns that can.1   

If you were analyzing attendance data for a school district, the names of the individual schools would be categorical and the minutes of approved attendance would be quantitative.  Using this example, a simple bar chart could be used to visualize the amount of attendance approved each week.  If a new attendance feature is aimed at increasing the amount of approved attendance, the following hypothesis might be formulated:

- Null hypothesis:  The new feature will not increase approved attendance
- Alternate hypothesis:  The new feature will increase approved attendance
	
It may be that this feature would need to aim for a *specific* percentage increase to justify the investment but, for the product brief, it might be wise to postpone this decision until the epic is written.

When working with engineers, there is value in understanding how to write, test, troubleshoot, and release code; when working with data analysts, there is value in understanding statistical analysis:  In both cases, this understanding helps the product manager provide clear guidance and expectations in both the creation of the product and the measures of the success of that product.  And, while a deep dive into advanced analytics and machine learning concepts may not be seen as worthwhile by many product managers, advancements in large language models are making advanced data analysis using Python available for use by those who want to push the boundaries of the skills and scope of the role.

1 In a meaningful way, for example, while a numeric id can be summed, the sum is not a total.
