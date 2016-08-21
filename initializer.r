#copy bundle and unzip, removing zip file

file.copy(paste(path_from,"/analysis_workspace.zip",sep = ""),
          paste(path_to,"/analysis_workspace.zip",sep = ""))
setwd(path_to)
unzip("analysis_workspace.zip")
file.remove(paste(path_to,"/analysis_workspace.zip",sep = ""))
setwd("analysis_workspace")

#initialize r script

sink("R/00_libraries_and_variables.R")
cat("library(ggplot2)\n")
cat("setwd('mywd')")
sink()

#initialize sas file

sink("sas/00_libraries_and_variables.sas")
cat("%let root_folder = \\Sede.corp.Sanpaoloimi.com\\FSTA\\AuditBA2\\Audit\\_UFFICIO\\Audit Ufficio\\2016\\attualizzazione_incagli_sof\\sas_workspace;\n")
cat("libname root 	 '&root_folder'      access=temp;")
sink()

# initialize report

sink("deliverable/report.rmd")
cat('---\n')
cat('title: "report"\n')
cat('author: "the_author"\n')
cat('date: ""\n')
cat('output: html_document\n')
cat('---\n')
cat('\n')
cat('```{r setup, include=FALSE}\n')
cat('knitr::opts_chunk$set(echo = TRUE)\n')
cat(paste("setwd('",path_to,"')\n",sep = ""))
cat('library(rio)\n')
cat('library(ggplot2)\n')
cat('\n')
cat('\n')
cat('```\n')
cat('\n')
cat('## Report\n')
cat('\n')
cat('It is a period of civil war.\n')
cat('Rebel spaceships, striking\n')
cat('from a hidden base, have won\n')
cat('their first victory against\n')
cat('the evil Galactic Empire.\n')
cat('\n')
cat('During the battle, Rebel\n')
cat('spies managed to steal secret\n')
cat('plans to the Empire s\n')
cat('ultimate weapon, the DEATH\n')
cat('STAR, an armored space\n')
cat('station with enough power\n')
cat('to destroy an entire planet.\n')
cat('\n')
cat('Pursued by the Empire s\n')
cat('sinister agents, Princess\n')
cat('Leia races home aboard her\n')
cat('starship, custodian of the\n')
cat('stolen plans that can save her\n')
cat('people and restore\n')
cat('freedom to the galaxy....\n')
cat('\n')
cat('```{r cars}\n')
cat('star_wars <- import("data/0_read-only/star_wars.txt",format=";")\n')
cat('qplot(star_wars[,4],as.numeric(star_wars$`Box Office Gross - Worldwide`))\n')

cat('```\n')

sink()
