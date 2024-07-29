# Created: 2024-07-29
# Author: Alex Zajichek
# Project: Example Shiny App - AWS Deployment
# Description: Functionality of the app

# Make the server
function(input, output, session) {
  
  # Make a plot
  output$my_plot <- 
    renderPlot({
      hist(
        rnorm(
          n = input$size, 
          mean = input$mean, 
          sd = input$sd
        ),
        xlab = "Sampled Value",
        ylab = "Frequency",
        main = paste0("Normal distribution sample of N=", input$size)
      )
    })
  
}