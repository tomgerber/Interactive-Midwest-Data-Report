library("dplyr")
library("ggplot2")
library("plotly")

bar_chart <- function(data, variable, color) {
  data <- data %>%
    group_by(state) %>%
    summarize(
      avg = mean(!!rlang::sym(variable))
    )

  chart <- data %>%
    plot_ly(
      type = "bar",
      x = ~avg,
      y = ~state,
      color = I(color)
    ) %>%
    layout(
      xaxis = list(
        title = paste("Average", variable)
      ),
      yaxis = list(
        title = paste("State")
      )
    )

  return(chart)
}
