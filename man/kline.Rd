% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chart.R
\name{kline}
\alias{kline}
\title{Create a candlestick chart}
\usage{
kline(quote, deficiency = FALSE, slider = TRUE)
}
\arguments{
\item{quote}{A cryptoQuote in xts/zoo format.}

\item{deficiency}{Logical. FALSE by default, if TRUE color defiency compliant
colors are used.}

\item{slider}{Logical. TRUE by default. If FALSE, no slider will be included.}
}
\value{
Invisbly returns a plotly object.
}
\description{
This function returns a plotly kline chart with
the most common indicators.
}
\seealso{
Other charting: 
\code{\link{chart}()},
\code{\link{ohlc}()}
}
\concept{charting}
