#Single-cell RNA-seq analysis of human germline cells and their niche cells
load("germ_cell.RData")

library(shiny)

ui <- fluidPage(
  headerPanel('Single-cell RNA-seq analysis of human germline cells and their niche cells'),
  sidebarPanel(
    selectInput(inputId="gene", label='Select or Input Gene Symbol', choices = row.names(data_log2), selected = "KIT"),
	submitButton(text = "Submit"),
    helpText("Click the submit button to update the plot displayed in the right panel.")
  ), 
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  gene_id <- reactive({
  input$gene
  })
  
  output$plot1 <- renderPlot({
    barplot(as.numeric(data_log2[input$gene,]),col=colsidecol,width=1,
          space=c(rep(0,711),7,rep(0,280),7,rep(0,677),7,rep(0,174)),
          border=colsidecol,ylim=c(0,10),ylab="Log2(TPM/10+1)",main = input$gene)
    abline(v=c(714.5,1002,1687.5),lty=6,lwd=1,col="DarkRed")
	legend(ncol=15,"top",cex=0.6,c("F-FGC#1","F-FGC#2","F-FGC#3","F-FGC#4","F-Soma#1","F-Soma#2","F-Soma#3","F-Soma#4","M-FGC#1","M-FGC#2","M-FGC#3","M-Soma#1","M-Soma#2","M-Soma#3","M-Soma#4"),
       fill=c("ForestGreen","DeepPink1","DodgerBlue","red","black","Thistle3","grey51","LightGray","MediumBlue","DarkOrange","purple","LightCyan4","PeachPuff1","LightBlue2","PeachPuff4"),
       border=c("ForestGreen","DeepPink1","DodgerBlue","red","black","Thistle3","grey51","LightGray","MediumBlue","DarkOrange","purple","LightCyan4","PeachPuff1","LightBlue2","PeachPuff4"))
  })
}

shinyApp(ui = ui, server = server)