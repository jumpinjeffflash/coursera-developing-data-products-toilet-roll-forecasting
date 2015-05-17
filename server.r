library(shiny)
library(datasets)

RollUsage 	            <- function(rolls) rolls * 52
Miles		                <- function(rolls) rolls * 3.1
Square		              <- function(rolls) rolls * 109
Cost		                <- function(rolls) rolls * 13

shinyServer(
	function(input, output) {
		output$inputValue 	<- renderPrint({input$rolls})
		output$prediction 	<- renderPrint({RollUsage(input$rolls)})
		output$miles  		  <- renderPrint({Miles(input$rolls)})
		output$squarefeet	  <- renderPrint({Square(input$rolls)})
		output$cost			    <- renderPrint({Cost(input$rolls)})
	}
)
