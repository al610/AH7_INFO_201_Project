# set ups
library(shiny)
library("dplyr")
library("lintr")
source("datasets.R")
library(UsingR)
library(tidyverse)

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
  })
    
    # draw a box plot about female wages
    output$BoxPlotFemale <- renderPlot({
      Seattle_Wages %>% 
        mutate(Female_Avg_Hrly_Rate = gsub("[A-Za-z&-]", "", Female_Avg_Hrly_Rate)) %>%
        filter(!is.na(Female_Avg_Hrly_Rate), str_length(Female_Avg_Hrly_Rate) != 0) %>% 
        mutate(Female_Avg_Hrly_Rate = as.numeric(Female_Avg_Hrly_Rate)) %>% 
        filter(Female_Avg_Hrly_Rate > input$min_dph) %>% 
        ggplot(aes(y = Female_Avg_Hrly_Rate)) +
        scale_y_log10() +
        geom_boxplot(outlier.colour="red", outlier.shape=8,
                     outlier.size=4) +
        labs(title = "Distribution of Females' Hourly Wages", y = "Dollars")
    })
    
    # draw a box plot about male wages
    output$BoxPlotMale <- renderPlot({
      Seattle_Wages %>% 
        mutate(Male_Avg_Hrly_Rate = gsub("[A-Za-z&-]", "", Male_Avg_Hrly_Rate)) %>%
        filter(!is.na(Male_Avg_Hrly_Rate), str_length(Male_Avg_Hrly_Rate) != 0) %>% 
        mutate(Male_Avg_Hrly_Rate = as.numeric(Male_Avg_Hrly_Rate)) %>% 
        filter(Male_Avg_Hrly_Rate > input$min_dph2) %>% 
        ggplot(aes(y = Male_Avg_Hrly_Rate)) +
        scale_y_log10() +
        geom_boxplot(outlier.colour="red", outlier.shape=8,
                     outlier.size=4) +
        labs(title = "Distribution of Males' Hourly Wages", y = "Dollars")
    })

    # draw a table about each job
    output$table <- renderTable({
      df <- Sex_Occupatiosn_and_wages %>% filter(Occupational_Category == input$job)
      male_employees <- as.data.frame(df$Number_of_Full_Time_Year_Round_Workers_Men_Estimate)
      female_employees <- as.data.frame(df$Number_of_Full_Time_Year_Round_Workers_Women_Estimate)
      percent <- as.data.frame(df$Percentage_of_Women_in_Occupational_Category_Estimate)
      men_wage <- as.data.frame(df$Median_Earnings_In_Dollars_Men_Estimate)
      women_wage <- as.data.frame(df$Median_Earnings_In_Dollars_Women_Estimate)
      comb <- cbind(male_employees, female_employees, percent, men_wage, women_wage)
      colnames(comb) <- c("Total Male Employees", "Total Female Employees",
                          "Percentage of Women Who Have This Job", "Median Earnings For Men",
                          "Median Earnings For Women")
      comb
    })
}