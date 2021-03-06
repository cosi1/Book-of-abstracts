library('readxl')
library('purrr')
library('xtable')

program <- read_excel('figs/Preliminary_program.xlsx', sheet=2)[c(1:73), c(1:6)]
names(program) <- c("Session", "Type", "Name", "Surname", "Title", "Chairman")
x <- xtable(program, digits=0)
align(x) <- "p{0.1cm}|p{2.6cm}|p{1.8cm}|p{1.9cm}|p{2.2cm}|p{9cm}|p{2.5cm}|"
print(x, type="latex", file="figs/full_program.tex", include.rownames=FALSE, 
      tabular.environment='longtable', floating=FALSE, size="\\fontsize{9pt}{10pt}\\selectfont")
