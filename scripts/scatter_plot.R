library("dplyr")
library("ggplot2")

scatter_plot <- function(data, variable, point) {
  data <- data %>%
    filter(state == variable)

  scatter <- data %>%
    ggplot(aes(x = poptotal, y = percadultpoverty)) +
    geom_point(shape = as.numeric(as.character(point))) +
    labs(x = "Total Population", y = "Percent of Adults in Poverty")

  return(scatter)
}
