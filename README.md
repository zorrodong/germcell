# germcell
Single-cell RNA-seq analysis of human germline cells and their niche cells.

#1: 
One can use this shiny app to see the expression pattern of human germline cells and their niche cells in R program (make sure shiny package has already been installed: install.packages("shiny")):

library(shiny)

runGitHub("germcell", "zorrodong")

#2: 
one can also extract the expression value on log2(TPM/10 + 1) of human germline cells and their niche cells by downloading the germ_cell.RData and doing this in R:

load("gern_cell.RData") #and the expression value is stored in the variable: data_log2
