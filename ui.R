
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Prediction of MPG based on weight of car"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("Weight",
                  "Weight in tons:",
                  min = 1,
                  max = 5,
                  value = 3,
                  step=0.1),
      h4(' '),
      h3('Instructions:'),
      h4(' Use the slider above to set the weight of the car that you want to predict the MPG for.'),
      h4(' '),
      h4(' The result will be shown to the right along with the input value in tons')
    ),

   
    
    # Show value of the generated prediction of MPG
    mainPanel(
   
    h4('Weight entered '),
    verbatimTextOutput("caption"),
    h4('has a predicted MPG of '),
    verbatimTextOutput("prediction")
   
         )
  )
))
