# set ups
library(shiny)
source("datasets.R")

# Define the first page content
page_one <- tabPanel(
  # show with a displayed title
  titlePanel("Background & Research Questions"),
  # show an emphasized title
  em(h1("Background")),
  # paragraph about the background
  p(strong("Gender disparity in the US workplace is observed
           specifically through wages and by occupation of women,
           though policies advocating feminism and equal rights
           clearly exist. Though there are improvements over
           the years, we notice that there are still inequitable
           differences between men and women based on several
           other factors.")),
  p(strong("This problem matters because about half the population
           of people in the labor force are women. '57.1% of women
           participate in the labor force, compared to 69.1% of
           men.' (Catalyst) Studies have also shown that 'women
           of color have a large gender wage gap and experience
           significant cumulative lifetime wage loss as a result.'
           (Catalyst) As the US continues to grow more diverse in
           ethnic background, it also means that the gap will
           increase even farther apart especially for POC female
           groups.")),
  # show an emphasized title
  em(h1("Research Questions")),
  # paragraph about the research questions
  p(strong("Gender wage gap has been a world-wide issue for long
           time, however, is it still apparent in the United
           States of America even after so many feminist
           progressive movements have been made? Our focus is to
           explore the difference between male and female employees
           from the perspective of their yearly incomes across the
           country. From that, we also want to compare with local
           data in Seattle, specifically, and how hourly wages as
           well as number of employees hired are different for each
           gender. The problem of pay gap is important to us
           because as a society we need to recognize inequality
           in order to move forward and solve the problems."))
)

# Define the third page content
page_three <- tabPanel(
  # show with a displayed title
  titlePanel("Conclusion"),
  em(h1("Our conclusions:")),
  p(strong("(1) The strengths of this project was our strong topic
           as it provided many sources, articles, and government
           policies that helped support our research and claim.
           Weaknesses included finding data that perfectly fit
           the conditions of the rubric (200 observations with
           5 columns) because most of the data would be subsets of
           a larger sample. Another weakness was making sure our
           dataset had overlapping qualities to create connections
           that are not forceful.")),
  p(strong("(2) The main lessons we have learned is to find our topic
           earlier on and do the research before finding too late
           that there is not enough evidence to support what we want
           to prove. We have also learned to communicate and collaborate
           better as a team by being more transparent and working
           around each others schedules.")),
  p(strong("(3) In the future, I (Annabel) want to pursue a career that
           intersects information technology and design to create
           social good much like this meaningful project. Learning
           and wrangling with data taught me how I can powerfully
           capture my audiences not only with visual appeal but
           also empirically/ through logos."))
)

# Define the fourth page content
page_four <- tabPanel(
  # show with a displayed title
  titlePanel("About the Tech"),
  # show an emphasized title
  em(h1("Description of this shiny application")),
  # paragraph about this page
  p(strong("The major components of our shiny application are 5
           pages, which includes the introduction page, about us
           page, visualization page, about the tech page and
           Conclusion Page. We loaded our two data sets via csv
           files. We used libraries such as shiny and dplyr. We
           used filter in library dplyr to get the data we want.
           We created a directory and put every R file into it,
           and we also have a directory called 'data', which
           stores the data sets we got. We have not really gotten
           involved with machine learning and we hope we can do
           more statistical analysis by showing our users with
           different options of interactive system."))
)

# Define the fifth page content
page_five <- tabPanel(
  # show with a displayed title
  titlePanel("About Us"),
  h1("Info-201: Technical Foundations of Informatics"),
  h1("The Information School"),
  h1("University of Washington"),
  h1("Autumn 2019"),
  h2("Group Members: "),
  h2(em("Annabel Lee, Ming Han, Lee Shi")),
  p(strong("Our purpose is to explore the gender inequality in
           this day and age."))
)

# Define the first table panel of the second page content
page_1 <- tabPanel(
  # show with a displayed title
   titlePanel(title = "histogram"),
   # This content uses a sidebar layout
   sidebarLayout(
     sidebarPanel(
       selectInput("var", "Select topics",
                   choices = c("Female" = 14, "Male" = 12, "percentage" = 16),
                   selected = "percentage"),
       br(),
       sliderInput("bins", "Select the BINs", min = 5, max = 100, value = 10),
       br(),
       selectInput(inputId = "bincolor",
                   label = "Color",
                   choices = colors())
   ),
   mainPanel(
     plotOutput("histogram"),
     h3(textOutput("explaination"))
   )
)
)

# Define the second table panel of the second page content
page_2 <- tabPanel(
  # show with a displayed title
  titlePanel(title = "boxplot"),
  # This content uses a sidebar layout
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Please select a topic",
                  choices = c("Hourly rate" =
                  "gender difference of the hourly rate"),
                  selected = "Hourly rate"),
      checkboxInput("outliers", "Show outliers", TRUE)
    ),
    mainPanel(
      h3(textOutput("caption"))
#      plotOutput("genderplot")
    )
  )
)

# Define the second page content
page_two <- navbarMenu(
  # show with a displayed title
  titlePanel("Visualizations"),
  # combine these two pages into this page
  page_1,
  page_2
)

# Pass each page to a multi-page layout
ui <- navbarPage(
  titlePanel("Gender Difference In Work Places"),
  page_one,
  page_two,
  page_three,
  page_four,
  page_five
)
