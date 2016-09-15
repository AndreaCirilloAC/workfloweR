#copy bundle and unzip, removing zip file
 
source("app.R",local= TRUE)
shinyApp(ui = ui, server = server)



