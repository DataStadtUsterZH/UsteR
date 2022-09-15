#' Verzeichnis von Datensätzen
#'
#' @return Ein Verzeichnis der verfügbaren Daten über die Stadt Uster. Bei Nutzung im Stadtnetz sind auch (noch) nicht veröffentlichte Daten verfügbar.
#' add(1, 1)
#' @export

data_directory <- function() {
  if(dir.exists("S:\\Arbeitsbereiche\\Open-Data-und-Statistik")){
    if(file.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")){
      directory <- readr::read_csv("S:\\Arbeitsbereiche\\Open-Data-und-Statistik\\Data\\verzeichnis.csv")
    }
  } else {
    directory <- readr::read_csv("https://raw.githubusercontent.com/DataStadtUsterZH/DataDirectory/main/verzeichnis.csv")
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

  # Methode für Laden definieren
  lade_methode <- "auto"
  if(dir.exists("S:\\Arbeitsbereiche")) {
    lade_methode <- "wininet"
  }

  # Verzeichnis laden
  if(dir.exists("S:\\Arbeitsbereiche\\Open-Data-und-Statistik")){
    if(file.exists("S:/Arbeitsbereiche/Open-Data-und-Statistik/Data/verzeichnis.csv")){
      filename <- tempfile()
      download.file(url = as.character(directory$URL), destfile = filename, method = lade_methode)
      directory <- readr::read_csv(filename)
      file.remove(filename)
    }
  } else {
    filename <- tempfile()
    download.file(url = as.character(directory$URL), destfile = filename, method = lade_methode)
    directory <- readr::read_csv(filename)
    file.remove(filename)
  }
  # Datensatz laden
  directory<- dplyr::filter(directory, ID==id)
  if(as.character(directory$Format=="csv")){
    filename <- tempfile()
    download.file(url = as.character(directory$URL), destfile = filename, method = lade_methode)
    data <- readr::read_csv(filename)
    file.remove(filename)
  } else if (as.character(directory$Format=="xls")){
    filename <- tempfile()
    download.file(url = as.character(directory$URL), destfile = filename, method = lade_methode)
    data <- readxl::read_excel(filename)
    file.remove(filename)
  }
  print(data)
   }


