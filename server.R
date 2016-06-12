
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(datasets)
fit<-lm(formula = mpg ~ wt , data = mtcars)

      
shinyServer(function(input, output) {
     
      
      
      #Generate model based on correlation of weight to MPG
    
  #output$inputValue <- renderPrint({input$Weight})
  output$prediction<-renderPrint(unname(predict (fit, newdata=data.frame(wt=c(input$Weight)))))

  output$caption <- renderText({ input$Weight })
  

})
