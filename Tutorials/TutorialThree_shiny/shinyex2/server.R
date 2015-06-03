#### Server.R ########
library(shiny)
library(ggplot2)
library(googleVis)
data("Fruits")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$plotOne <- renderPlot({
    selectedData <- subset(Fruits, Fruits$Year==input$yearInput)
    p <- ggplot(selectedData, aes(x=Sales, y=Expenses, colour=Fruit))+
      geom_point(aes(size=Profit))
    print(p)
  })
  
  
  output$plotTwo <- renderPlot({
    p <- ggplot(Fruits, aes_string(x="Fruit", y=input$var, colour="Location"))+
      geom_boxplot()
    print(p)
  })
  
})