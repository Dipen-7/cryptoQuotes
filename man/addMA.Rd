% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chart_indicators.R
\name{addMA}
\alias{addMA}
\title{Add various Moving Average indicators
to the chart}
\usage{
addMA(plot, FUN = TTR::SMA, ...)
}
\arguments{
\item{plot}{A plotly object of either
klines or OHLC}

\item{FUN}{A named function calculating MAs. See \code{\link[TTR:MovingAverages]{TTR::SMA()}}}

\item{...}{See \code{\link[TTR:MovingAverages]{TTR::SMA()}}}
}
\value{
Invisbly returns a plotly object.
}
\description{
The function supports all moving averages calculated
by the TTR library. Has to be explicitly called

\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}
}
\examples{
# script: scr_charting
# date: 2023-10-25
# author: Serkan Korkmaz, serkor1@duck.com
# objective: Charting in general
# script start;

# library
library(cryptoQuotes)

# charting klines
# with various indicators
chart(
  chart = kline(
    ATOMUSDT
  ) \%>\% addVolume() \%>\% addMA(
    FUN = TTR::SMA,
    n = 7
  ) \%>\% addMA(
    FUN = TTR::SMA,
    n = 14
  ) \%>\%
    addBBands() \%>\%
    addMACD() \%>\%
    addRSI()

)


# script end;
}
\seealso{
Other chart indicators: 
\code{\link{addBBands}()},
\code{\link{addEvents}()},
\code{\link{addMACD}()},
\code{\link{addRSI}()},
\code{\link{addVolume}()}
}
\concept{chart indicators}
