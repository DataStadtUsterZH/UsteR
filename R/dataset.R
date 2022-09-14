#' Verzeichnis von Datensätzen
#'
#' @return Ein Verzeichnis der verfügbaren Daten. Bei Nutzung im Stadtnetz sind auch (noch) nicht veröffentlichte Daten verfügbar.
#' add(1, 1)
#' @export

data_directory <- function() {
  if(dir.exists("S:\\Arbeitsbereiche\\Open-Data-und-Statistik")){
    if(file.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")){
      directory <- read.csv("S:\\Arbeitsbereiche\\Open-Data-und-Statistik\\Data\\verzeichnis.csv")
    }
  } else {
    directory <- read.csv("https://raw.githubusercontent.com/DataStadtUsterZH/DataDirectory/main/verzeichnis.csv")
  }
  print(directory)
  }


#' Laden eines Datensatz anhand der ID
#'
#' @param id ID des gewünschten Datensatz
#' @return Ein Dataset
#' add(1, 1)
#' @export

load_data <- function(id) {
  if(dir.exists("S:\\Arbeitsbereiche\\Open-Data-und-Statistik")){
    if(file.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")){
      directory <- read.csv("S:\\Arbeitsbereiche\\Open-Data-und-Statistik\\Data\\verzeichnis.csv")
    }
  } else {
    directory <- read.csv("https://raw.githubusercontent.com/DataStadtUsterZH/DataDirectory/main/verzeichnis.csv")
  }

  directory<- dplyr::filter(directory, ID==id)
  data <- read.csv(as.character(directory$URL))
  print(data)
   }


