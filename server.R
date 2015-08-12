library(shiny)
library(shinyAce)
library(psych)
library(lavaan)
library(semPlot)


shinyServer(function(input, output) {
    
    
    
    bs <- reactive({
        x <- read.csv(text=input$text, sep="\t")
        describe(x)[2:13]
    })
    
    
    
    correl <- reactive({
        x <- read.csv(text=input$text, sep="\t")
        round(cor(cbind(x), use = "complete"),3)
    })
    
    
    makecorPlot <- function(){
        x <- read.csv(text=input$text, sep="\t")
        pairs.panels(x)
    }
    
    output$corPlot <- renderPlot({
        print(makecorPlot())
    })
    
    
    get.text <- reactive({
        input$spec
    })
    
    
    
    est <- reactive({
        dat <- read.csv(text=input$text, sep="\t")
        
        model <- get.text()
        
        fit <- sem(model, data=dat)

        list(fit = fit) #他で使用するため
    })
    
    
    
    result <- reactive({
        
        res <- est()$fit
        summary(res, standardized=TRUE, fit.measures=TRUE)
        
    })
    
    
    
    
    
    makesPlot1 <- function(){
        res <- est()$fit
        semPaths(res, "par", mar=c(3,4,3,4), style="lisrel", edge.label.cex=.8, fade=F, gray=T)
    }


    output$sPlot1 <- renderPlot({
        print(makesPlot1())
     })
    




    makesPlot2 <- function(){
        res <- est()$fit
        semPaths(res, "std", mar=c(3,4,3,4), style="lisrel", edge.label.cex=.8, fade=F, gray=T)
    }

    output$sPlot2 <- renderPlot({
        print(makesPlot2())
    })
    
    
    
    
    
    info <- reactive({
        info1 <- paste("This analysis was conducted with ", strsplit(R.version$version.string, " \\(")[[1]][1], ".", sep = "")# バージョン情報
        info2 <- paste("It was executed on ", date(), ".", sep = "")# 実行日時
        cat(sprintf(info1), "\n")
        cat(sprintf(info2), "\n")
    })
    
    output$info.out <- renderPrint({
        info()
    })





    output$textarea.out <- renderPrint({
        bs()
    })

    output$correl.out <- renderPrint({
        correl()
    })
    
    output$result.out <- renderPrint({
        result()
    })


})
