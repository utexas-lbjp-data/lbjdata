#' #' theme_lbj ggplot2 Themes
#' #'
#' #' ggplot2 theme for use on LBJ School Data Initiatives reports. Requires the "Libre Franklin" Font, which can be downloaded on Google Fonts.
#' #'
#' #' @param base_size the base font size of text
#' #' @param base_family the font family
#' #' @param title_size the size of your title font
#' #' @param subtitle_size the size your subtitle font
#' #' @param caption_size the size your caption font
#' #' @param legend_position where the legend should be placed
#' #' @param ... Additional arguments passed to [ggplot2::theme_minimal()]
#' #'
#' #' @return a ggplot theme
#' #' @export
#' #'
#' #' @examples
#' #'
#' #' ggplot2::qplot(mtcars$wt) +
#' #' theme_lbj(base_size=14,title_size=23, subtitle_size=12)
#' theme_lbj <- function(base_size=14,base_family="Libre Franklin",title_size=23, subtitle_size=12, caption_size=10, legend_position = "none", ...) {
#'   ggplot2::theme_minimal(base_size = base_size,base_family = base_family, ...) +
#'     ggplot2::theme(plot.title = ggtext::element_markdown(size = title_size, color= "#333f48",family = "LibreFranklinRoman-Black"),
#'                    plot.subtitle = ggtext::element_markdown(size = subtitle_size, family = "Libre Franklin", color = "#333f48", margin = ggplot2::margin(b=15)),
#'                    plot.caption = ggplot2::element_text(family="LibreFranklinRoman-Regular", color="#8C8F93",size=caption_size, lineheight = 1, hjust = 0, vjust=-5),
#'                    axis.title.x = ggplot2::element_text(family="LibreFranklinRoman-Bold", size=8, color="#6B6D6F"),
#'                    axis.title.y = ggplot2::element_text(family="LibreFranklinRoman-Bold", size=8, color="#6B6D6F"),
#'                    legend.position = legend_position,
#'                    plot.margin = ggplot2::margin(t=15, r=15, b=10, l = 15)
#'     ) +
#'     ggplot2::theme(axis.line.x =  ggplot2::element_line(color="#5d5d5d", size=.8),
#'                    panel.grid.major.y = ggplot2::element_line(color="#e3e3e3"),
#'                    panel.grid.minor.y = ggplot2::element_line(linetype=2, size=0, color="#e3e3e3"),
#'                    panel.grid.major.x = ggplot2::element_blank(),
#'                    panel.grid.minor.x = ggplot2::element_blank(),
#'                    axis.title.x = ggplot2::element_text(hjust=1),
#'                    axis.title.y = ggplot2::element_text(hjust=1),
#'                    axis.ticks.x = ggplot2::element_line(size = .5))
#' }
#'
#' #' theme_lbj_benson ggplot2 Themes
#' #'
#' #' ggplot2 theme for use on LBJ School Data Initiatives reports. Requires the "Benson Sans" font being installed.
#' #'
#' #' @param base_size the base font size of text
#' #' @param base_family the font family
#' #' @param title_size the size of your title font
#' #' @param subtitle_size the size your subtitle font
#' #' @param caption_size the size your caption font
#' #' @param legend_position where the legend should be placed
#' #' @param ... Additional arguments passed to [ggplot2::theme_minimal()]
#' #'
#' #' @return a ggplot theme
#' #' @export
#' #'
#' #' @examples
#' #'
#' #' ggplot2::qplot(mtcars$wt) +
#' #' theme_lbj_benson(base_size=14,title_size=23, subtitle_size=12)
#'
#'
#' theme_lbj_benson <- function(base_size=14,base_family="Benson Sans",title_size=23, subtitle_size=12, caption_size=10, legend_position = "none", ...) {
#'   ggplot2::theme_minimal(base_size = base_size,base_family = base_family, ...) +
#'     ggplot2::theme(plot.title = ggtext::element_markdown(size = title_size, color= "#333f48",family = "BentonSans-Black"),
#'                    plot.subtitle = ggtext::element_markdown(size = subtitle_size, family = "Benson Sans", color = "#333f48", margin = ggplot2::margin(b=15)),
#'                    plot.caption = ggplot2::element_text(family="BentonSans-Regular", color="#8C8F93",size=caption_size, lineheight = 1, hjust = 0, vjust=-5),
#'                    axis.title.x = ggplot2::element_text(family="BentonSans-Bold", size=8, color="#6B6D6F"),
#'                    axis.title.y = ggplot2::element_text(family="BentonSans-Bold", size=8, color="#6B6D6F"),
#'                    legend.position = legend_position,
#'                    plot.margin = ggplot2::margin(t=15, r=15, b=10, l = 15)
#'     ) +
#'     ggplot2::theme(axis.line.x =  ggplot2::element_line(color="#5d5d5d", size=.8),
#'                    panel.grid.major.y = ggplot2::element_line(color="#e3e3e3"),
#'                    panel.grid.minor.y = ggplot2::element_line(linetype=2, size=0, color="#e3e3e3"),
#'                    panel.grid.major.x = ggplot2::element_blank(),
#'                    panel.grid.minor.x = ggplot2::element_blank(),
#'                    axis.title.x = ggplot2::element_text(hjust=1),
#'                    axis.title.y = ggplot2::element_text(hjust=1),
#'                    axis.ticks.x = ggplot2::element_line(size = .5))
#' }
