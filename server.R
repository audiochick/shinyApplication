library(shiny)

library(datasets)

shinyServer(function(input, output) {
  
  output$phonePlot <- renderPlot({
    
    filtered <- subset(data,state.division==input$div)
    filtered$state.division <- NULL
    filtered$row.names <- NULL
    
    barplot(filtered[,input$cat], 
            main=input$cat,
            ylab="Number/Fraction",
            xlab="State",
            names.arg = filtered$state.abb)
    
    output$desc <- renderText({ 
      paste("You have selected to view ", input$cat, " data for the division of ", input$div)
    })
  })
})