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
In addition, the expression value on TPM and UMI counts data are available in the compressed zip file: TPM_and_UMI_counts.rar，one can extract data based on the second or third sheet of Table S1 or handle it by yourself. We recommend that you normalize it by log2 (TPM/10+1). You can also normlize the data through UMI_counts data in your way. 

#4：
The supplemental discussion includes two parts: (i) The Expression Characteristics of Ribosome-associated Genes and RNA-binding Proteins; (ii) Species Specifically Expressed Genes in Mouse and Human FGCs and Gonad Niche Cells.