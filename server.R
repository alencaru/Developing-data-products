tcar <- read.csv("tcar.csv", header=TRUE, sep=",")
tprice <- read.csv("tprice.csv", header=TRUE, sep=",")

myfunction<-function(a,b){
        a
        b
        z <- tcar[tcar$CAR == c(b),3]
        within(tprice[,c(2,3)],{expenditure <- a/z*price})
        } 


shinyServer(
        function(input,output){
             
                output$inputValue <- renderPrint({input$a})   
                output$inputValue2 <- renderPrint({input$b})
                output$bc <- renderDataTable({
                  input$submit
                  myfunction(input$a,input$b)
                  
                })
                
                }
        )
