library(tm)
library(wordcloud)
library(shiny)
library(memoise)

fluidPage(
  # Application title
  titlePanel("Donald Trump Tweets - Word Cloud: 
             2016-2017"),
  
  sidebarLayout(
    # Sidebar with a slider and selection inputs
    sidebarPanel(
      sliderInput("freq",
                  "Select the minimum frequency of word occurence Mr. Trumps tweets:",
                  min = 1,  max = 100, value = 50),
      sliderInput("max",
                  "Select the maximum number of words to display in the Word Cloud:",
                  min = 1,  max = 500,  value = 100)
    ),
    
    # Show Word Cloud
    mainPanel(
      plotOutput("plot")
    )
  )
)