# usteR

## English

## Deutsch

### Funktionen

* Mit dem Befehl **data_directory()** wird ein Tibble (Liste) von Datensätzen mit offenen Daten ausgegeben.
* Mit dem Befehl **load_data(id)** wird der Datensatz ausgegeben. Die Variable id ist dabei durch die ID des Datensatz (kann über die Funktion data_directory() oder unter [https://github.com/DataStadtUsterZH/DataDirectory/blob/main/verzeichnis.csv] 



### Installation

**usteR** isn't on CRAN, but it's easy to install directly from GitHub using [devtools](http://cran.r-project.org/web/packages/devtools/index.html):

```R
if (!require("devtools")) {
  install.packages("devtools")
  library("devtools")
}
install_github("DataStadtUsterZH/UsteR")
```
