library(shiny)

server <- function(input, output) {
  
}

ui <- fluidPage(
  h1("workflower"),
  p("paste here a destination path where you whish to build the analytical workspace"),
  textInput(label = "write path","path_to"),
  p("select languages you are going to work with within this project"),
  checkboxGroupInput("list",
                     label = "select languages",
                     choices = c("R","sas"),
                     selected = c("R"))
)


