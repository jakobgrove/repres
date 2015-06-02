### UI.R ###

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Fruits Sales over Three Years"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      
      helpText("You can here select the Year to display
               in the scatter plot"),
      
      sliderInput("integer", "Year:",
                  min = 2008, max = 2010, value = 2008)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("plot")
    )
  )
))