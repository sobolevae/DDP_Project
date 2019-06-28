library(shiny)

shinyServer(function(input, output) {
  data(mtcars)

  fit <- lm(mpg ~ wt + as.factor(cyl), data = mtcars)
  pred <- reactive({
    predict(fit, newdata = data.frame(wt = input$weight, cyl = input$cyl))
  })
  output$MPGValue <- renderText(round(pred(), 2))
})
