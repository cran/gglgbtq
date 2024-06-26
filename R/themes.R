#' Use default theme for an LGBTQ palette
#'
#' @description Provides a default theme for a given palette. Most LGBTQ flags
#' contain white, for which the default light gray background of ggplot2 is too
#' light. Conversely, this same gray is too dark for flags with yellow stripes.
#' LGBTQ themes are carefully curated for each palette.
#'
#' @param name `character(1)` \cr
#'  Name of the flag the colors are based on.
#' @param ... `ANY` \cr
#'  Parameters passed to [ggplot2::theme()].
#'
#' @eval roxygen_available_palettes()
#'
#' @return A ggplot2 `theme` object.
#'
#' @examples
#' data <- data.frame(
#'   x = 1:10, y = 15:6,
#'   group = rep(c("a", "b"), each = 5)
#' )
#'
#' ggplot2::ggplot(data, ggplot2::aes(x = x, y = y, color = group)) +
#'   ggplot2::geom_point(size = 4) +
#'   scale_color_lgbtq("intersex") +
#'   # Use the same name as for values, preferably
#'   theme_lgbtq("intersex")
#'
#' @export
theme_lgbtq <- function(name, ...) {
  if (!name %in% names(pride_data)) {
    stop("Theme doesn't exist!", call. = FALSE)
  }

  extract_theme(name)(...)
}

theme_lgbtq_default <- function(...) {
  ggplot2::theme(
    panel.background = ggplot2::element_rect(fill = "grey82", color = NA),
    panel.grid.minor = ggplot2::element_line(linewidth = ggplot2::rel(0.5)),
    legend.key = ggplot2::element_rect(fill = "grey82", color = NA),
    ...
  )
}

theme_lgbtq_white <- function(...) {
  ggplot2::theme(
    panel.background = ggplot2::element_rect(fill = "white", color = NA),
    panel.border = ggplot2::element_rect(fill = NA, color = "black"),
    panel.grid = ggplot2::element_line(color = "grey92"),
    panel.grid.minor = ggplot2::element_line(linewidth = ggplot2::rel(0.5)),
    legend.key = ggplot2::element_rect(fill = "white", color = NA),
    ...
  )
}

theme_agender <- function(...) {
  ggplot2::theme(
    panel.background = ggplot2::element_rect(fill = "#DDE3D8", color = NA),
    panel.grid.minor = ggplot2::element_line(linewidth = ggplot2::rel(0.5)),
    legend.key = ggplot2::element_rect(fill = "#DDE3D8", color = NA),
    ...
  )
}

theme_demiboy <- function(...) {
  ggplot2::theme(
    panel.background = ggplot2::element_rect(fill = "#D8E0E3", color = NA),
    panel.grid.minor = ggplot2::element_line(linewidth = ggplot2::rel(0.5)),
    legend.key = ggplot2::element_rect(fill = "#D8E0E3", color = NA),
    ...
  )
}

theme_demigirl <- function(...) {
  ggplot2::theme(
    panel.background = ggplot2::element_rect(fill = "#E3DADD", color = NA),
    panel.grid.minor = ggplot2::element_line(linewidth = ggplot2::rel(0.5)),
    legend.key = ggplot2::element_rect(fill = "#E3DADD", color = NA),
    ...
  )
}

# Default settings are fine too
theme_ggplot2 <- function(...) {
  ggplot2::theme(...)
}
