library("shiny")
library("ggplot2")
library("dplyr")
library("plotly")
source("app_server.R")
source("app_ui.R")

midwest %>% pull(state)

midwest_data <- midwest

shinyApp(ui = ui, server = server)
