# germcell
Single-cell RNA-seq analysis of human germline cells and their niche cells.

#1: 
One can use this shiny app to see the expression pattern of human germline cells and their niche cells in R program (make sure shiny package has already been installed: install.packages("shiny")):

library(shiny)

runGitHub("germcell", "zorrodong") #wait for ~ 1 minute,depends on network speed

#2: 
One can also extract the expression value on log2(TPM/10 + 1) of human germline cells and their niche cells by downloading the germ_cell.RData and doing this in R:

load("gern_cell.RData") #and the expression value is stored in the variable: data_log2

#3:
In addition, the expression value on log2 (TPM/10+1) and UMI counts data are available in the compressed zip file: germcell_expression_values_and_umi_counts.rar

#4：
The supplementary discussion includes two parts: (i) The Expression Characteristics of Ribosome-associated Genes and RNA-binding Proteins; (2) Species specifically expressed genes in mouse and human FGCs and gonad niche cells.