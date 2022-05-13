#' Verzeichnis von Datensätzen
#'
#' @return Ein Verzeichnis der Verfügbaren Daten. Bei stadtinterner Nutzung sind auch (noch) nicht öffentliche Daten verfügbar.
#' add(1, 1)
#' @export

uster_data_directory <- function() {
  if(dir.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik")){
    if(file.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")){
      directory <- read.csv("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")
      }
    } else {
      directory <- read.csv("https://raw.githubusercontent.com/DataStadtUsterZH/DataDirectory/main/verzeichnis.csv")
    }
  print(directory)
  }


#' Laden eines Datensatz anhand der ID
#'
#' @param ID ID des gewünschten Datensatz
#' @return Ein Dataset
#' add(1, 1)
#' @export

uster_load_data <- function(id) {
  if(dir.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik")){
    if(file.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")){
      directory <- read.csv("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")
    }
  } else {
    directory <- read.csv("https://raw.githubusercontent.com/DataStadtUsterZH/DataDirectory/main/verzeichnis.csv")
  }

  directory <- directory[directory$ID==id]
  data <- read.csv(as.character(directory$URL))
  print(data)
   }

