
if(file.exists("C:/Users/winters/Documents/HyDREC/HyDREC-master")){
  setwd("C:/Users/winters/Documents/HyDREC/HyDREC-master")
  copyLocation = "C:/xampp/htdocs/CHIELD/"
}

if(file.exists("~/Documents/Bristol/HyDREC/HyDREC/")){
  setwd("~/Documents/Bristol/HyDREC/HyDREC/")
  copyLocation = "/Library/WebServer/Documents/HyDREC/"
}

source("processing/TreeToDatabase.R")
source("makeCausalLinksJSON.R")

file.copy("../data/db/","../app/data/",recursive = TRUE)
file.copy("../app/Site/",copyLocation,recursive = TRUE)
file.copy("../php/",paste0(copyLocation,"Site/"),recursive = TRUE)
file.copy("../js/",paste0(copyLocation,"Site/"),recursive = TRUE)
file.copy("../app/data/",copyLocation,recursive = TRUE)

# TODO: Zip data and copy to downloads