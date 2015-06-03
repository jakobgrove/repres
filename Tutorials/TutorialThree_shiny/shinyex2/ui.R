### UI.R ###

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Fruits Sales over Three Years"),
  
  p("This is a more complex layout realised with fluidrows instead of sidepanels"),
  br(),

  fluidRow(
    
    column(4,
           wellPanel(
              helpText("You can here select the Year to display
               in the scatter plot"),
              sliderInput("yearInput", "Year:", 
                          min = 2008, max = 2010, value = 2008))
           ),
    column(8,
           plotOutput("plotOne")
           )
    
  ),
  
  fluidRow(
    
    column(4,
           wellPanel(
             helpText("Here you can select the variable to
               display in the boxplot"),
             selectInput("var",
                         label = "Choose a variable to display",
                         choices = list("Sales", "Expenses", "Profit"))
           )
    ),
    column(8,
           plotOutput("plotTwo")
    )
    
  )

))