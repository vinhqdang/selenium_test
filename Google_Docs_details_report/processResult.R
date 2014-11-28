setwd ("/home/score/workspace/selenium_test/Google_Docs_details_report")
df <- read.table ("res_google.txt", header = TRUE)
u <- df$ user
s <- df$speed
us <- paste(formatC( u , width = 2, format = "d", flag = "0") , '.' , formatC( s , width = 2, format = "d", flag = "0" ), space='')
boxplot (df$delay ~ us, las = 2)
