#' Import Libre Franklin font for use in charts
#'
#' Libre Franklin Libre Franklin is an interpretation and expansion of the 1912 Morris Fuller Benton classic.
#' The Libre Franklin project is led by Impallari Type, a type design foundry based in Rosario, Argentina.
#' To contribute, see github.com/impallari/
#'
#' Libre-Franklin is Copyright 2015 Impallari Type and are licensed under the Open Font License.
#'
#'
#' @md
#' @note This will take care of ensuring PDF/PostScript usage. The location of the
#'   font directory is displayed after the base import is complete. It is highly
#'   recommended that you install them on your system the same way you would any
#'   other font you wish to use in other programs.
#' @export
import_libre_franklin <- function() {

  extrafont::loadfonts()

  fl_font_dir <- system.file("fonts", "libre-franklin", package="lbjdata")

  suppressWarnings(suppressMessages(extrafont::font_import(fl_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      fl_font_dir)
  )

}

#' @rdname LibreFranklin
#' @md
#' @title Libre Franklin font name R variable aliases
#' @description `font_tw` == "`Libre Franklin`"
#' @format length 1 character vector
#' @export
font_fl <- "Libre Franklin"

#' @rdname LibreFranklin
#' @md
#' @note `font_fl_black` (a.k.a. "`LibreFranklin-Black`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_fl_black` == "`LibreFranklin-Black`"
#' @export
font_fl_black <- "LibreFranklin-Black"

#' @rdname LibreFranklin
#' @md
#' @note `font_fl_bold` (a.k.a. "`Libre Franklin Bold`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_fl_bold` == "`LibreFranklin-Bold`"
#' @export
font_fl_bold <- "LibreFranklin-Bold"

#' @rdname LibreFranklin
#' @md
#' @description `font_fl_light` == "`LibreFranklin-Light`"
#' @export
font_fl_light <- "LibreFranklin-Light"

#' @rdname LibreFranklin
#' @md
#' @description `font_fl_thin` == "`LibreFranklin-Thin`"
#' @export
font_fl_thin <- "LibreFranklin-Thin"
