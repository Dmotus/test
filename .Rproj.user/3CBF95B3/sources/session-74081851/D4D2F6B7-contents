# ui.R

# Load the shiny package
library(shiny)

# Define the UI
ui <- fluidPage(
  # Title
  titlePanel("Simple Shiny App"),
  
  # Sidebar layout
  sidebarLayout(
    sidebarPanel(
      # Input: Text input for the title of the plot
      textInput("title", "Plot Title:", "Simple Plot"),
      
      # Input: Numeric input for the number of points in the plot
      numericInput("num_points", "Number of Points:", 10, min = 1, max = 100)
    ),
    
    # Main panel for displaying the plot
    mainPanel(
      plotOutput("scatter_plot")
    )
  )
)
