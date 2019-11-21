# set ups
library(shiny)
library("dplyr")
library("lintr")
source("datasets.R")

# The backend which takes the front end data and compute the results.
server <- function(input, output) {

  # Define a histogram to render in the UI
  output$histgram <- renderPlot({

  # make the input varaible into numbers and store it.
  col <- as.numeric(input$var)

  # filter out the unwanted data which stops the function to work.
  without_na <- Sex_Occupatiosn_and_wages %>%
    filter(Women_As_A_Percentage_of_Mens
           != "(X)") %>%
    filter(Median_Earnings_In_Dollars_Men_Estimate != "-") %>%
    filter(Median_Earnings_In_Dollars_Women_Estimate != "-")

  # make the whole column into numbers instead of strings.
  without_na$Women_As_A_Percentage_of_Mens <-
    as.numeric(
      without_na$Women_As_A_Percentage_of_Mens)

  # make the whole column into numbers instead of strings.
  without_na$Median_Earnings_In_Dollars_Men_Estimate <-
    as.numeric(without_na$Median_Earnings_In_Dollars_Men_Estimate)

  # make the whole column into numbers instead of strings.
  without_na$Median_Earnings_In_Dollars_Women_Estimate <-
    as.numeric(without_na$Median_Earnings_In_Dollars_Women_Estimate)

  # start a condition for different histograms according to different inputs.
  if (col == 16) {

  # store the column into an object.
  x <- without_na$Women_As_A_Percentage_of_Mens

  # set up the bin.
  bins <- seq(min(x), max(x), length.out = input$bins + 1)

  # draw out the actual histogram which allows user to change the colors
  # and bins. Also, the x-axis and title are setted up.
  hist(without_na[, col], breaks = bins, col = input$bincolor, border = "grey",
       xlab = "female wages in percentage of males'(in percentage)",
       main = "Histogram of female wages in percentage of males'")
  }

    # another condition for another histogram.
    else if (col == 12) {

    # store the column into an object.
    x <- without_na$Median_Earnings_In_Dollars_Men_Estimate

    # set up the bin.
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw out the actual histogram which allows user to change the
    # colors and bins. Also, the x-axis and title are setted up.
    hist(without_na[, col], breaks = bins, col = input$bincolor,
         border = "grey",
         xlab = "Male wages(in dollars)",
         main = "Distribution of male wages")
  }
    # the other condition.
    else {
    # store the column into an object.
    x <- without_na$Median_Earnings_In_Dollars_Women_Estimate

    # set up the bin.
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw out the actual histogram which allows user to change the
    # colors and bins. Also, the x-axis and title are setted up.
    hist(without_na[, col], breaks = bins, col = input$bincolor,
         border = "grey",
         xlab = "Female wages(in dollars)",
         main = "Distribution of female wages")
    }
    # Introduce research question and our conclusion as long as
    # our future plans.
    output$explaination <- renderText({
    paste("We would like to explore if females and males have the same
          yearly earnings in the same position/department/job in the
          United State of America. We constructed 3 different histograms
          in order to show the differences between the wages of males
          and females. One of the histograms shows the female earnings in
          the percentage of male earnings accross the nation. The other
          two show the distribution of how much do males and females earn
          each year. We found that a majority of females do not earn
          as much as males do in the same position according these
          histograms. In the future, we will construct a new histogram
          which combines the two histograms we have for females' and males'
          yearly wages. In addition, our users will be able to choose only
          show males/females.")
    })
  })

  # Define a boxplot to render in the UI
  # output$genderplot <- renderPlot({

    # We have not make this part funtional at this point, however,
    # we have the plan as below.
    output$caption <- renderText({
      paste("We want to construct two box plots based on two different
            types of variables that are hourly wages and number of
            employees. The first one is based on hourly wages, the
            y-axis is the wages in dollars and the x-axis is the gender.
            Two separate boxplots each represents a gender will be
            placed vertically.The second one is based on number of
            employees, the y-axis is the count of the employees and the
            x-axis is the gender. Two separate boxplots each represents
            a gender will be placed vertically. Users will have options
            to include or exclude outliers.")
    })

    # boxplot we are planning to draw for the final shiny app.
    # boxplot(as.formula(formulaText()),
    #        data = Seattle_Wages$Female_Avg_Hrly_Rate,
    #        outline = input$outliers)
#  })
}