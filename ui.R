library(shiny)

shinyUI(fluidPage(
  titlePanel("IGNITOR Dashboard"),
  sidebarLayout(
    sidebarPanel(uiOutput("instituteselector"),
                 dateRangeInput('dateRange',
                                label = 'Date range input: yyyy-mm-dd',
                                start = Sys.Date()-14, end = Sys.Date()
                 ),
                 radioButtons("Period_analysis","Define Period:",choices = list("Weekly Analysis", "Monthly Analysis", "Daily Analysis")),
                 radioButtons("Usage_analysis","Select:",choices = list("Total Usage","Usage per student")),
                 radioButtons("Usage_units","Select Unit for Usage:",choices = list("Minutes","Hours")),
                 radioButtons("Active_students","Select:",choices = list("Active Students","% of Active students"))
                 
                 
                 
                 ),
   
    mainPanel()
  )
  
))