midwest_data <- midwest
library("dplyr")
library("plotly")
source("app_ui.R")
source("./scripts/bar_chart.R")
source("./scripts/scatter_plot.R")

server <- function(input, output) {
  output$chart <- renderPlotly({
    return(bar_chart(midwest_data, input$analysis_var, input$color))
  })
  output$scatter <- renderPlot({
    return(scatter_plot(midwest_data, input$which_state, input$point_type))
  })
}
