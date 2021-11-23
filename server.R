# Load libraries
library(shiny)
library(tidyverse)
library(ggthemes)

# Read in data
adult <- read_csv("adult.csv")

# Define server logic
shinyServer(function(input, output) {
  
  df_country <- reactive({
    adult %>% filter(Native_Country == input$country)
  })
  
  # TASK 5: Create logic to plot histogram or boxplot
  output$p1 <- renderPlot({
    if (input$graph_type == "Histogram") {
      # Histogram
      ggplot(df_country(), aes_string(x = input$continuos_variable)) +
        geom_histogram(bins = 30, color = "white") +  # histogram geom
        labs(title = paste('Histogram of frecuency by', input$continuos_variable), x = str_to_sentence(input$continuos_variable, 'en'), y = "Frecuency") +  # labels
        facet_wrap(~Prediction)    # facet by prediction
    }
    else {
      # Boxplot
      ggplot(df_country(), aes_string(y = input$continuos_variable)) +
        geom_boxplot() +  # boxplot geom
        coord_flip() +  # flip coordinates
        labs(title = paste('Boxplot of', input$continuos_variable, 'distribution'), y = str_to_sentence(input$continuos_variable, 'en')) +  # labels
        facet_wrap(~Prediction)    # facet by prediction
    }
    
  })
  
  # TASK 6: Create logic to plot faceted bar chart or stacked bar chart
  output$p2 <- renderPlot({
    # Bar chart
    p <- ggplot(df_country(), aes_string(x = input$categorical_variable)) + 
      labs(title = paste('Bar chart of distribution by', input$categorical_variable), x = str_to_sentence(input$categorical_variable, 'en')) + # labels
      theme(
        axis.text.x = element_text(angle = 45),
        legend.position = "bottom"
      )    # modify theme to change text angle and legend position
    
    if (input$is_stacked) {
      p + geom_bar(position = "stack", aes(fill = Prediction))  # add bar geom and use prediction as fill
    }
    else{
      p + 
        geom_bar(position = "stack", aes_string(fill = input$categorical_variable)) + # add bar geom and use input$categorical_variables as fill 
        facet_wrap(~Prediction)   # facet by prediction
    }
    
    
  })
  
})
