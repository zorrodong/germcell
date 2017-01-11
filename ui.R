library(shiny)
load("germ_cell.RData")
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