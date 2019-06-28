library(shiny)
library(stats)
library(graphics)
library(grDevices)
library(utils)
library(datasets)
library(methods)
library(base)

shinyUI(fluidPage(

  titlePanel("Simple Miles per Gallon (MPG) Predictor"),

  sidebarLayout(
    sidebarPanel(
       sliderInput("weight",
                   "Set the car weight in tons:",
                   min = 1,
                   max = 6,
                   step = 0.1,
                   value = 3.5),
       selectInput("cyl", "Choose the number of сylinders:", c(4, 6, 8)),
       submitButton("Submit!")
    ),

    mainPanel(
      "This tiny application can help you to predict the amount of miles your car could run with one gallon of fuel (MPG value) depending on the car weight and the number of cylinders it has.",
      br(),
      "Please, set a car weight by the slider in the left panel and choose the number of cylinders. Then press <Submit!> button.",
      br(),
      "Here you are! You will see below the MPG value calculated for you!",
      br(),
      h3("Predicted MPG value for your car:"),
      h3(textOutput("MPGValue"))
    )
  )
))
