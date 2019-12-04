# Technical Report
## **Gender Disparity in the Workplace**
Project: gender disparity

Annabel Lee, Lee Shi, Ming Yan

```
Info-201: Technical Foundations of Informatics
The Information School
University of Washington
Autumn 2019
```
### 1.0 Introduction
#### 1.1 Problem Situation
In the US, gender inequalities between men and women in the workplace have been observed for a long time. "Under Title VII of the Civil Rights Act of 1964, employees, job applicants, and union members are protected from sex discrimination at the workplace and at the union hall." ([ACLU](https://www.aclu.org/know-your-rights/sex-discrimination/)) Though policies like these exist, data shows how inequalities in wages between men and women are still observed. It is unfair how 2 people working the same exact job could be paid different amounts based on the factor of one's gender. Many feminist organizations are working within the government sector, educating young generations of equity, and creating awareness towards the public. This issue still affects those around us today and if nothing is done now then future generations will also be affected. We will be looking at a couple different data sets that compare national wages of both genders as well as examining local data for any wage gaps in our hometown of Seattle, Washington. 

The direct stakeholders target women and men. Indirect stakeholders include: the future generations of girls and boys, as the gap will greatly affects their lives; the LGBTQ communities, which is another minority group overlooked in the paying workforce; companies as a whole because company culture will have to implement not only a change in their policy but a change in attitude of the workforce; and other countries as they could be influenced in their economies to push for pay equity. Non-targeted uses of this data could be to an advantage for other communities who are fighting for pay equity.

##### 1.2 What is the problem?
Gender disparity in the US workplace is apparent specifically through wages and by occupation of women, though policies advocating feminism and equal rights clearly exist. Although the states have been progressively improving over the years, we still notice that there are inequitable differences between men and women based on several other factors. 

##### 1.3 Why does it matter?
This problem matters because about half the population of people in the labor force are women. "57.1% of women participate in the labor force, compared to 69.1% of men." ([Catalyst](https://www.catalyst.org/research/women-in-the-workforce-united-states/)) Studies have also shown that "women of color have a large gender wage gap and experience significant cumulative lifetime wage loss as a result." ([Catalyst](https://www.catalyst.org/research/women-in-the-workforce-united-states/)) As the US continues to grow more diverse in ethnic background, it also means that the gap will increase even farther apart especially for POC female groups.  

##### 1.4 How it will be addressed?
This problem will be addressed by informing our audiences of all age groups, especially the younger generations of clearly visually communicating what is going on and the trends over time. To create an awareness of who is being directly affected and how it could affect those around them. We will be creating a Shiny Application that will visualize to our audience a histogram comparing the gender gap to make it more clear how it exists. 

### 2.0 MAIN RESEARCH QUESTION
The gender wage gap has been a world-wide issue for long time, however, is it still apparent in the United States of America even after so many feminist progressive movements have been made. Our focus is to explore the difference between male and female employees from the perspective of their yearly incomes across the country. From there, we also want to compare with local Seattle data and how hourly wages, number of employees hired, are different for each gender.


### 3.0 DATA SETS
### Full-Time, Year-Round Workers and Median Earnings in the Past 12 Months by Sex and Detailed Occupation: 2016
1. **Who created it?** Formulated by the Census Bureau, American Community Survey, and the 2016 Community Survey
1. **Why was it created?** To get a yearly statistic of people in the labor force working full-time, year-round per occupation.
1. **Where did you access it?**  Found on public enigma data source website and dataset is sourced by https://www.census.gov/data/tables/time-series/demo/industry-occupation/median-earnings.html
1. **What represents an “observation”?**
An observation is considered through population count, yearly earnings, and as percentages calculated through the part divided by the sum.

1. **What “variables” does each observation have?**
Occupational Category
Enigma Serial ID
An Enigma assigned serial id.
Number Of Full-Time, Year-Round Workers Total Estimate
Number Of Full-Time, Year-Round Workers Total Moe
Number Of Full-Time, Year-Round Workers Men Estimate
Number Of Full-Time, Year-Round Workers Men Moe
Number Of Full-Time, Year-Round Workers Women Estimate
Number Of Full-Time, Year-Round Workers Women Moe
Percentage Of Women In Occupational Category Estimate
Percentage Of Women In Occupational Category Moe
Median Earnings In Dollars Total Estimate
Median Earnings In Dollars Total Moe
Median Earnings In Dollars Men Estimate
Median Earnings In Dollars Men Moe
Median Earnings In Dollars Women Estimate
Median Earnings In Dollars Women Moe
Women's Earnings As A Percentage Of Mens Earnings Estimate
Women's Earnings As A Percentage Of Mens Earnings Moe

1. **How big is the data set? If it is a sub-set of a larger data set, how was the sub-set created?**
It has 18 fields and 558 rows of different occupational categories.

1. **If the data set represents people, who has been included and who has been excluded?**
It excludes part-time workers, self-employed workers and other gender minority groups like the LGBTQ community for example. It does include over 500 different occupational categories but there are other jobs that may not have counted.


### City of Seattle Wages: Comparison by Gender - Average Hourly Wage by Department

Average hourly wages for women and men sorted by City department and age range.

1. **Who created it?** Created on February 4, 2015 by the City of Seattle and published on data.seattle.gov.
1. **Why was it created?** To compare average hourly wages by department per gender
1. **Where did you access it?** This dataset is intended for public access and use found on https://catalog.data.gov/dataset/city-of-seattle-wages-comparison-by-gender-average-hourly-wage-by-department-382fb.
1. **What represents an “observation”?** An observation is considered through hours, earnings, a ratio from men to women (gender gap), and by human count.
1. **What “variables” does each observation have?**
Departmet,
Job Titile,
Female average Hourly Rate,
No. Females Employed,
Male Average Hourly Rate,
No. Males Employed,
Total Average Hourly Rate,
Total No. Employed,
Total Average of Months/ Longevity

1. **How big is the data set? If it is a sub-set of a larger data set, how was the sub-set created?**
The data has over 200 observations with 9 fields. No subset.

1. **If the data set represents people, who has been included and who has been excluded?**
Like the other data set, it excludes specific minority gender groups like the LGBTQ and self-employed workers.

### Gender Wage Gap Ratio

"The gender wage gap is the percent by which hourly wages of female workers are less than hourly wages of male workers. It is also often expressed as a wage ratio (women’s share of men’s wages) by subtracting the gap from 100 percent." (Source 1)

1. **Who created it?** Sourced by the CPS ORG of the Economic Policy Institute
1. **Why was it created?** It calculates the gender wage gap ratio between men and women in the labor force based off of demographics
1. **Where did you access it?** The State of Working America Data Library which is a public open data source website found on https://www.epi.org/data/.  
1. **What represents an “observation”?** An observation is surveying a sample and taking the hourly wage and calculating it "in the following manner: If a valid hourly wage was reported, that wage was used throughout our analysis. For salaried workers (those who report only a weekly wage), the hourly wage was the weekly wage divided by the hours worked. Outliers, i.e., persons with hourly wages below 50 cents or above $100 in 1989 dollars (adjusted by the CPI-U-RS consumer price index), were removed from the analysis. These yearly upper and lower bounds are presented in [the data]. CPS demographic weights were applied to make the sample nationally representative.""

1. **What “variables” does each observation have?** "The regression-based gap is based on average wages and controls for gender, race and ethnicity, education, age, and geographic division. The log of the hourly wage is the dependent variable."
1. **How big is the data set? If it is a sub-set of a larger data set, how was the sub-set created?**
This data shows 46 rows of observations from years 1973–2018 calculating the average hourly wage per gender and calculating gender wage gap with the averages. The data is a subsample from of a larger dataset by taking the averages of each year and gender.

1. **If the data set represents people, who has been included and who has been excluded?**
The data includes men and women who are in the labor force— ages 16 and up— but excludes other genders such as the LGBTQ community and of course, retired citizens. "Workers who receive wages, salaries, commissions, tips, payment in kind, or piece rates, excluding self-employed workers."

### 4.0 INFORMATION VISUALIZATIONS
For the histogram, we want to show the distribution of female yearly income as proportions of male ones under the same job. It is commonly accepted that histogram is good at showing distributions so we used histograms. The histogram shows that most females earn around 75 - 85% of male’s earnings per year. As for the boxplot, we want to look at specific differences. Boxplot is picked because it shows clearly where the mean and outliers located. When putting two boxplots vertically together, it is easy to compare them.

### 5.0 TECHNICAL DESCRIPTION OF SHINY APPLICATION
The major components of our shiny application are 5 pages, which includes the introduction page, about us page, visualization page, about the tech page and Conclusion Page. We loaded our two data sets via csv files. We used libraries such as shiny and dplyr. We used filter in library dplyr to get the data we want. We created a directory and put every R file into it, and we also have a directory called “data”, which stores the data sets we got. We have not really gotten involved with machine learning and we hope we can do more statistical analysis by showing our users with different options of interactive system.

### 6.0 CONCLUSION
(1) The strengths and weaknesses of the project;
The strengths of this project was our strong topic as it provided many sources, articles, and government policies that helped support our research and claim. Weaknesses included finding data that perfectly fit the conditions of the rubric (200 observations with 5 columns) because most of the data would be subsets of a larger sample. Another weakness was making sure our dataset had overlapping qualities to create connections that are not forceful.

(2) The main lessons we have learned is to find our topic earlier on and do the research before finding too late that there is not enough evidence to support what we want to prove. We have also learned to communicate and collaborate better as a team by being more transparent and working around each others schedules.   

(3) In the future, I (Annabel) want to pursue a career that intersects information technology and design to create social good much like this meaningful project. Learning and wrangling with data taught me how I can powerfully capture my audiences not only with visual appeal but also empirically/ through logos.   

### 7.0 References
[1] Economic Policy Institute, State of Working America Data Library, “[Gender Wage Gap](https://www.epi.org/data/#?subject=wagegap-mf),” 2019.

[2] Catalyst: https://www.catalyst.org/research/women-in-the-workforce-united-states/

[3] ACLU: https://www.aclu.org/know-your-rights/sex-discrimination/

### APPENDIX 1: DATA DICTIONARY
| Variable Name                | Description                     | Data Type | Measurement Type |
|------------------------------|---------------------------------|-----------|------------------|
| Department                   | which department for occupation | string    | department       |
| Job Title                    | title of occupation             | string    | job title        |
| Average Hourly Rate          | average hourly earned in a year | integer   | hours            |
| Number Employed              | number of people employed       | integer   | people           |
| Average of Months/ Longevity | number of months worked         | integer   | months           |
| Total Average Hourly Rate    | average rate over months worked | integer   | hours            |
| Total Number Employed        | total men and women working     | integer   | people           |

### APPENDIX 2: REFLECTIONS

* **Annabel Lee:** This project was challenging as a group because we originally struggled with trying to find data that fit the conditions of the requirement (over 200 observations with 5 columns) that could potentially relate to our ramen ratings dataset. After looking altogether on the internet, it was too difficult and seemed forceful to create assumptions and prove a point with data that did not seem sufficient. Thus we decided to change our direction completely to a topic that felt more relevant and with more accessible sources. We also learned how to communicate better and check-in with each other more often as the deadline approached. Personally, I will work on letting my group mates know more honestly where I am at and if the load is too much or not. This project positioned me to be the thinker and person that makes the connections within the data. In the near future of this project, I am interested in seeing how our discoveries with gender gap in wages is portrayed interactively.   
* **Ming Yan:** During the preparation of this project, I have the importance of team working and communication. Before this project, our team did not have a good way of splitting the work and helping each other.From a technical perspective, Shiny is not extremely hard and it is pretty fun to learn. The whole concept of server, ui, is different from what we have learned before but it can be connected. Nevertheless, it is difficult to transform plots from ggplot to Shiny, and we got stuck when building a boxplot. Also, it is hard to make everyone work on the same project and we always run into errors when transporting codes. In the future, everything will be planned forward well before like what we did this time so that each team member could contribute more equally and we should get in touch with the teaching team more frequent too. As for the project itself, more in depth analysis of the graphs will be done, and the graphs themselves will be improved to be easier to be interpreted and understood.

* **Lee Shi:** In this project, one thing I learned is how to find dataset and how to manipulate dataset to find what I am looking for. I came to realize the importance of being able to look at a raw data and analyze the relationship between variables, because without it, raw data doesn’t prove anything. Another important thing I learned is how to build a shiny application, the frustrating part is the beginning of looking at it, I had no idea how it works or how to write it. However, as I read codes from book and Shiny Gallery, I successfully understood it and I am able to write draw some interactive plots with it, which is a satisfying progress for me. I would continue learning it and enrich the shiny page for the final application. In addition, while building the shiny application, I feel my program is a little messy and not really helpful for debugging it if any bugs are found. In the future, I would start planning how to write the whole program before actually work on it. I am not good at coding, however, this project helped me with understanding how should I think as a coder and a thinker for how to organize a program.

### APPENDIX 3: USE OF ENVISIONING CARDS
[Indirect Stakeholders](https://www.envisioningcards.com/envision_pdfs/Stakeholders-Indirect-Stakeholders.pdf) Used this envisioning card to help guide and understand my indirect and direct stakeholders of this topic. This card revealed who is directly affected by our problem/solution and the impacts it could have on others. 

[Non-targeted Use](https://www.envisioningcards.com/envision_pdfs/Stakeholders-Non-Targeted-Use.pdf) Challenges us to think:  Who might use the data for unplanned or nefarious purposes? In what ways? These questions allows us to think in a reverse-method to open up any problems that we may not have thought of before and be more thoughtful of who might use our discoveries to their advantage. 
