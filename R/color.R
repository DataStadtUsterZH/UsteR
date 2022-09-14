
#' Farb-Schemas gemäss CD der Stadt Uster.
#'
#' @param schema Die Bezeichnung des Schemas:
#' @return Das Farbschema als Vector
#' add(1, 1)
#' @export
load_color <- function() {


  # Farben definieren

  farbe_dunkelgruen <- rgb(63, 103, 68,191, max=255)
  farbe_hellgruen <- rgb(165, 190, 55,191, max=255)
  farbe_blaugruen <- rgb(83, 150, 135,191, max=255)
  farbe_dunkelblau <- rgb(0, 95, 148,191, max=255)
  farbe_himmelblau <- rgb(187, 209, 229,191, max=255)
  farbe_tieforange <- rgb(213, 137, 37,191, max=255)
  farbe_sonnengelb <- rgb(232, 209, 34,191, max=255)
  farbe_purpur <- rgb(130, 40, 89,191, max=255)

  farbe_dunkelgruen <<- rgb(63, 103, 68,191, max=255)
  farbe_hellgruen <<- rgb(165, 190, 55,191, max=255)
  farbe_blaugruen <<- rgb(83, 150, 135,191, max=255)
  farbe_dunkelblau <<- rgb(0, 95, 148,191, max=255)
  farbe_himmelblau <<- rgb(187, 209, 229,191, max=255)
  farbe_tieforange <<- rgb(213, 137, 37,191, max=255)
  farbe_sonnengelb <<- rgb(232, 209, 34,191, max=255)
  farbe_purpur <<- rgb(130, 40, 89,191, max=255)

  farbe_3gruen <<- c(farbe_dunkelgruen,farbe_hellgruen,farbe_blaugruen)
  farbe_4gruenblau <<- c(farbe_dunkelgruen,farbe_hellgruen,farbe_blaugruen,farbe_dunkelblau)
  farbe_3hell <<- c(farbe_himmelblau, farbe_tieforange, farbe_sonnengelb)
  farbe_4hell <<- c(farbe_hellgruen,farbe_himmelblau, farbe_tieforange, farbe_sonnengelb)
  farbe_5dunkel <<- c(farbe_dunkelgruen,farbe_hellgruen,farbe_blaugruen,farbe_dunkelblau, farbe_purpur)
  farbe_6 <<- c(farbe_blaugruen, farbe_dunkelblau,farbe_himmelblau,farbe_tieforange,farbe_sonnengelb,farbe_purpur)
  farbe_7 <<- c(farbe_hellgruen,farbe_blaugruen, farbe_dunkelblau,farbe_himmelblau,farbe_tieforange,farbe_sonnengelb,farbe_purpur)
  farbe_8 <<- c(farbe_dunkelgruen,farbe_hellgruen,farbe_blaugruen, farbe_dunkelblau,farbe_himmelblau,farbe_tieforange,farbe_sonnengelb,farbe_purpur)
  farbe_4zweipoole <<- c(farbe_dunkelgruen,farbe_hellgruen, farbe_sonnengelb, farbe_tieforange)
  farbe_5angebote <<- c(farbe_tieforange,farbe_hellgruen,farbe_blaugruen,farbe_dunkelblau, farbe_purpur)

 }
