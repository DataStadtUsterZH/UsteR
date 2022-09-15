# usteR

## English

### Installation
**usteR** is not on CRAN, but it's easy to install the package directly from GitHub using [devtools](http://cran.r-project.org/web/packages/devtools/index.html). If you use R in the city administration, you must use the internal version. The following script checks this and always installs the correct version.

```R
if(file.exists("S:\\Arbeitsbereiche\\Open-Data-und-Statistik\\usteR\\usteR_0.0.0.9000.tar.gz")){
install.packages("S:/Arbeitsbereiche/Open-Data-und-Statistik/usteR/usteR_0.0.0.9000.tar.gz", repos = NULL, type = "source")
} else {
    if (!require("devtools")) {
    install.packages("devtools")
    library("devtools")
  }
install_github("DataStadtUsterZH/UsteR")
}
```

## Deutsch

### Funktionen

* Mit dem Befehl **data_directory()** wird ein Tibble (Liste) von Datensätzen mit offenen Daten ausgegeben.
* Mit dem Befehl **load_data(id)** wird der Datensatz ausgegeben. Die Variable id ist dabei durch die ID des Datensatz (kann über die Funktion data_directory() oder unter [https://github.com/DataStadtUsterZH/DataDirectory/blob/main/verzeichnis.csv] 



### Installation

**usteR** ist nicht auf CRAN, aber es ist einfach das Package direkt von GitHub mit [devtools](http://cran.r-project.org/web/packages/devtools/index.html) zu installieren. Wenn du R in der Stadtverwaltung nutzt, musst du die interne Version nutzten. Mit dem folgenden Skript wird dies geprüft und jederzeit die richtige Version installiert.

```R
if(file.exists("S:\\Arbeitsbereiche\\Open-Data-und-Statistik\\usteR\\usteR_0.0.0.9000.tar.gz")){
install.packages("S:/Arbeitsbereiche/Open-Data-und-Statistik/usteR/usteR_0.0.0.9000.tar.gz", repos = NULL, type = "source")
} else {
    if (!require("devtools")) {
    install.packages("devtools")
    library("devtools")
  }
install_github("DataStadtUsterZH/UsteR")
}
```
