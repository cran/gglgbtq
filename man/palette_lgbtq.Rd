% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palettes.R
\name{palette_lgbtq}
\alias{palette_lgbtq}
\title{Get one of LGBTQ palettes}
\usage{
palette_lgbtq(name)
}
\arguments{
\item{name}{\code{character(1)} \cr
Name of the flag the colors are based on.}
}
\value{
An \code{lgbtq_palette} object containing a vector of RGB color codes as strings.
}
\description{
Returns a palette object with colors based on a specified LGBTQ
flag. Note: the number of colors vary between palettes!
}
\section{Available palettes}{

Currently available palettes are:
\itemize{
\item \code{rainbow} (6 colors)
\item \code{lesbian} (5 colors)
\item \code{gay} (5 colors)
\item \code{bisexual} (3 colors)
\item \code{transgender} (3 colors)
\item \code{asexual} (4 colors)
\item \code{intersex} (2 colors)
\item \code{nonbinary} (4 colors)
\item \code{philadelphia} (8 colors)
\item \code{progress} (11 colors)
\item \code{aromantic} (5 colors)
\item \code{acesthetic} (4 colors)
\item \code{analterous} (4 colors)
\item \code{asensual} (4 colors)
\item \code{ace_spectrum} (4 colors)
\item \code{aro_spectrum} (5 colors)
\item \code{aroace} (5 colors)
\item \code{alloace} (4 colors)
\item \code{aroallo} (5 colors)
\item \code{pansexual} (3 colors)
\item \code{androsexual} (3 colors)
\item \code{gynesexual} (3 colors)
\item \code{abrosexual} (5 colors)
\item \code{lesbian_7} (7 colors)
\item \code{gay_7} (7 colors)
\item \code{demiboy} (4 colors)
\item \code{demigirl} (4 colors)
\item \code{helian} (5 colors)
\item \code{lunarian} (5 colors)
\item \code{solarian} (5 colors)
\item \code{stellarian} (5 colors)
\item \code{genderfluid} (5 colors)
\item \code{genderqueer} (3 colors)
\item \code{agender} (4 colors)
\item \code{bigender} (6 colors)
\item \code{amatopunk} (5 colors)
\item \code{bear} (7 colors)
\item \code{butch} (7 colors)
\item \code{femme} (5 colors)
\item \code{otter} (5 colors)
\item \code{queerhet} (5 colors)
}
}

\examples{
palette_lgbtq("bisexual")

data <- data.frame(
  x = 1:10, y = 15:6,
  group = rep(c("a", "b"), each = 5)
)

ggplot2::ggplot(data, ggplot2::aes(x = x, y = y, color = group)) +
  ggplot2::geom_point(size = 4) +
  ggplot2::scale_color_manual(values = palette_lgbtq("intersex"))

}
