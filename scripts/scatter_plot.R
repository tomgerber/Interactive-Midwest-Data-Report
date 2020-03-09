library("dplyr")
library("ggplot2")

scatter_plot <- function(data, variable,point) {
    data <- data %>% 
      filter(state == variable)
  
    scatter <- data %>%
      ggplot(aes(x = percadultpoverty, y = poptotal)) +
      geom_point(shape = as.numeric(as.character(point))) + 
      labs(x = "Percent of Adults in Poverty", y = "Total Population")
    
    return(scatter)
}