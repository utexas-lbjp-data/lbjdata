#' hc_theme_lbj highcharter Themes
#'
#' Minimalistic highcharter themes for use on LBJ School Data Initiative Projects.
#'
#' @param base_size the base font size of text
#' @param base_family the font family
#' @param title_size the size of your title font
#' @param title_weight the weight your tiitle font
#' @param subtitle_size the size your subtitle font
#' @param subtitle_weight the size your subtitle font
#' @param credit_size the size your credits font
#' @param header_align where to align the title and subtitle
#' @param legend_align where to align the legend
#' @param credits_align where to align the credits
#' @param ... Additional arguments passed to [highcharter::hc_theme()]
#'
#'
#' @return a highcharter theme
#' @export
#'
#' @examples
#' library(magrittr)
#' library(highcharter)
#'
#' data(economics_long, package = "ggplot2")
#'
#' economics_long2 <- dplyr::filter(economics_long, variable %in% c("pop", "uempmed", "unemploy"))
#'
#' head(economics_long2)
#'
#' highcharter::hchart(economics_long2, "line", hcaes(x = date, y = value01, group = variable)) %>%
#' hc_theme_lbj()

hc_theme_lbj <- function(base_size="12px", base_family="Montserrat", title_size="28px", title_weight = "800", subtitle_size="14px", subtitle_weight = "400",
                            credit_size="10px", header_align = "left", legend_align = "center", credits_align = "left", ...) {

  highcharter::hc_theme_merge(
    highcharter::hc_theme_smpl(),
    highcharter::hc_theme(colors = c('#005f86','#00a9b7','#9cadb7','#d6d2c4'),
                          marker = list(fillColor = c('#005f86','#00a9b7','#9cadb7','#d6d2c4'),
                                        lineColor = '#000',
                                        radius = 3,
                                        lineWidth = 1,
                                        symbol = "circle"),
                          chart = list(backgroundColor = "#fff",
                                       style = list(fontFamily = '"Libre Franklin", -apple-system, BlinkMacSystemFont,
                                                                  "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
                                                    fontSize = base_size,
                                                    fontWeight = "bold",
                                                    color="#333f48",
                                                    textTransform="initial")),
                          title = list(style = list(fontFamily = '"Libre Franklin", -apple-system, BlinkMacSystemFont,
                                                                  "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
                                                    color="#2d2d2d",
                                                    textTransform="initial",
                                                    fontWeight = title_weight,
                                                    fontSize = title_size),
                                       align = header_align),
                          subtitle = list(style = list(fontFamily = '"Libre Franklin", -apple-system, BlinkMacSystemFont,
                                                                     "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
                                                       color="#7d7d7d",
                                                       textTransform="initial",
                                                       fontWeight=subtitle_weight,
                                                       fontSize = subtitle_size),
                                          align = header_align),
                          legend = list(align = legend_align,
                                        style = list(fontFamily = '"Libre Franklin", -apple-system, BlinkMacSystemFont,
                                                                   "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif', color="#6d6d6d"),
                                        itemStyle = list(fontFamily = '"Libre Franklin", -apple-system, BlinkMacSystemFont,
                                                                      "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif', color = '#6d6d6d'),
                                        itemHoverStyle = list(color = 'gray'),
                                        verticalAlign = "top"),
                          credits = list(style = list(color = "#2d2d2d",
                                                      fontSize = credit_size),
                                         align = credits_align),
                          xAxis = list(labels =list(style = list(fontFamily = '"Libre Franklin", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
                                                                 color="#2d2d2d")),
                                       title = list(style = list(color = "#333f48",
                                                                 fontSize = base_size,
                                                                 fontWeight="500")),
                                       gridLineWidth = 0,
                                       gridLineColor = "#9d9d9d",
                                       lineColor = 'rgba(0,0,0,0.7)',
                                       minorGridLineColor = 'rgba(0,0,0,0.7)',
                                       tickColor = "#9d9d9d",
                                       tickWidth = 1),
                          yAxis = list(labels =list(style = list(fontFamily = '"Libre Franklin", -apple-system, BlinkMacSystemFont,
                                                                 "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
                                                                 color="#333f48")),
                                       title = list(style = list(color = "#fff",
                                                                 fontSize = "12px",
                                                                 color="#fff",
                                                                 fontWeight="500")),
                                       gridLineWidth = .5,
                                       gridLineColor = 'rgba(0,0,0,0.15)',
                                       lineColor = 'rgba(0,0,0,0.15)',
                                       minorGridLineColor = 'rgba(0,0,0,0.15)',
                                       tickColor = "#9d9d9d",
                                       tickWidth = 2)))
}

