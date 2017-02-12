library(tm)
library(wordcloud)
library(shiny)
library(memoise)


getTermMatrix <- memoise(function(){
  tweetdata <- read.csv('wcmatrix.csv')
})