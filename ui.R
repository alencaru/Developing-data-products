library(shiny)

tcar <- read.csv("tcar.csv", header=TRUE, sep=",")
tprice <- read.csv("tprice.csv", header=TRUE, sep=",")


shinyUI(pageWithSidebar(
        # application title
        headerPanel("Expenditure in Kilometer per litre in each country based on gas prices"),
        
        sidebarPanel(
                numericInput("a","Kilometers you wanna drive", 50, min = 1, max = 1000),
                selectInput("b", label="Chose a car:",
                            choices=list("up!","C3","Fit","208","i30","VW Golf",      
                            "Focus Hatch","Civic","Lancer","Fluence","Fusion Hybrid",
                            "Fusion Titanium", "Azera","ASX"),
                            selected = "Focus Hatch"),
               submitButton('Submit')
                     ),
        
        mainPanel(
                h4('Km you wanna drive:'),
                verbatimTextOutput("inputValue"),
                h4('Chosen Car:'),
                verbatimTextOutput("inputValue2"),
                h3('How much you will spend in each country:'),
                dataTableOutput("bc")
                        
                )
            )
        )
