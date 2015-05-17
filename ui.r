library(shiny)

shinyUI(pageWithSidebar(
	#Application title
	headerPanel("Yearly Toilet Roll Usage Forecasting"),	
	sidebarPanel(
		numericInput('rolls', 'How many toilet rolls do you use in a week?', 1, min = 0, max = 10, step = 1),
			submitButton('Submit')
		),
		mainPanel(
			h3('Results'),
			h4('You said you used this many toilet rolls in a week:'),
			verbatimTextOutput("inputValue"),
			h4('This means that you use this many toilet rolls in a year: '),
			verbatimTextOutput("prediction"),
			h4('Which equates to this many miles of toilet paper: '),
			verbatimTextOutput("miles"),
			h4('Alternatively, it equates to this much square footage: '),
			verbatimTextOutput("squarefeet"),
			h4("This means that you will spend the following amount of dollars on toilet roll per year: "),
			verbatimTextOutput("cost")
		)
	)
)
