midwest_data <- midwest
library("leaflet")

page_one <- tabPanel(
  "First Page",
  titlePanel("Midwest Data"),
  
  
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "analysis_var",
        label = "Level of Analysis",
        choices = c("popdensity", "percbelowpoverty")
      ),
      radioButtons(
        inputId = "color",
        label = "Display Color",
        choices = list("Red" = "red", "Blue" = "blue", "Green" = "green")
      )
    ),
    
    
    mainPanel(
      plotlyOutput("chart")
    )
  )
)

page_two <- tabPanel(
  "Second Page",
  titlePanel("Midwest Data"),

  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "which_state",
        label = "Pick a State",
        choices = c("IL", "MI", "IN", "OH", "WI")
      ),
      selectInput(
        inputId = "point_type",
        label = "Type of Point",
        choices = list( "Circular Point" = 19,
                       "Triangle Up" = 24,
                       "Triangle Down" = 25,
                       "Diamond" = 18)
      )
    ),
    
    
    mainPanel(
      plotOutput("scatter")
    )
  )
)


ui <- navbarPage(
  "My application",
  page_one,
  page_two
)
