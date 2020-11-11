
page_one <- tabPanel(
  "Statewide Averages",
  titlePanel("Histogram on Statewide Averages"),


  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "analysis_var",
        label = "X Axis Variable",
        choices = list(
          "Population Density" = "popdensity",
          "Percent Below Poverty" = "percbelowpoverty",
          "Percent of White Population" = "percwhite",
          "Percent of Black Population" = "percblack"
        )
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
  "Counties in Each State",
  titlePanel("Scatterplot with Points Representing Counties in Each State"),

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
        choices = list(
          "Circular Point" = 19,
          "Triangle Up" = 24,
          "Triangle Down" = 25,
          "Diamond" = 18
        )
      )
    ),


    mainPanel(
      plotOutput("scatter")
    )
  )
)


ui <- tagList(
  tags$head(tags$link(
    rel = "stylesheet",
    type = "text/css", href = "styles.css"
  )),
  navbarPage(
    "Midwest Data Report",
    page_one,
    page_two
  )
)
