# Created: 2024-07-29
# Author: Alex Zajichek
# Project: Example Shiny App - AWS Deployment
# Description: Builds the user interface

# Make the user interface
fluidPage(
  title = "AWS Example App",
  
  # Make a layout
  sidebarLayout(
    
    # Panel of user inputs
    sidebarPanel(
      
      # Sample size
      numericInput(
        inputId = "size",
        label = "Sample Size",
        value = 100,
        min = 1,
        max = 1000,
        step = 1
      ),
      
      # Mean value
      numericInput(
        inputId = "mean",
        label = "Mean",
        value = 0
      ),
      
      # Standard deviation
      numericInput(
        inputId = "sd",
        label = "Standard Deviation",
        value = 1
      )
    ),
    mainPanel(
      plotOutput(outputId = "my_plot")
    )
  )
)