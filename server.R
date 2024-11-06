# server.R

# Load the shiny package
library(shiny)

# Define the server logic
server <- function(input, output) {
  # Reactive expression to generate the data for the plot
  plot_data <- reactive({
    # Generate random data points based on the input
    data.frame(x = rnorm(input$num_points), y = rnorm(input$num_points))
  })
  
  # Render the plot
  output$scatter_plot <- renderPlot({
    data <- plot_data()
    
    # Generate a scatter plot
    plot(data$x, data$y, main = input$title, xlab = "X", ylab = "Y", pch = 19)
  })
}
