library("ggplot2")
library("dplyr")
midwest_data <- midwest

scatter_plot <- function(data, variable) {
  data <- data %>% 
    filter(state == variable)
  
  scatter <- data %>%
    ggplot(aes(x = county, y = data[[poptotal]])) +
    geom_point(shape = 24) + 
    labs(x = "County", y = "Total Population")
  
  return(scatter)
}

data <- midwest_data %>% 
  filter(state == "IL")
  
plot <- data %>% 
  ggplot(aes(x = county, y = poptotal)) +
  geom_point(shape = 24) + 
  labs(x = "County", y = "Total Population")

plot
