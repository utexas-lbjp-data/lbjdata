% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/themes.R
\name{theme_lbj_benson}
\alias{theme_lbj_benson}
\title{theme_lbj_benson ggplot2 Themes}
\usage{
theme_lbj_benson(
  base_size = 14,
  base_family = "Benson Sans",
  title_size = 23,
  subtitle_size = 12,
  caption_size = 10,
  legend_position = "none",
  ...
)
}
\arguments{
\item{base_size}{the base font size of text}

\item{base_family}{the font family}

\item{title_size}{the size of your title font}

\item{subtitle_size}{the size your subtitle font}

\item{caption_size}{the size your caption font}

\item{legend_position}{where the legend should be placed}

\item{...}{Additional arguments passed to \code{\link[ggplot2:ggtheme]{ggplot2::theme_minimal()}}}
}
\value{
a ggplot theme
}
\description{
ggplot2 theme for use on LBJ School Data Initiatives reports. Requires the "Benson Sans" font being installed.
}
\examples{

ggplot2::qplot(mtcars$wt) +
theme_lbj_benson()
}
