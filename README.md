# Quant Quote Historical Ingest

Ingest daily resolution stock data for symbols in the S&amp;P500

Script to load daily quotes for S&P500 companies into a Postgres database.

## Data Source

The data provider is [QuantQuote](https://quantquote.com/historical-stock-data), a "leading provider of high resolution historical intraday stock data and live feeds."

> This collection of daily resolution data goes back to 1998 for all symbols currently active in the S&P500. It is updated quarterly, the last update was 07/31/2013 (for more frequent updates, contact us). While this data is available for free from multiple online sources, the QuantQuote Free Daily Data has several advantages not found elsewhere:
> - Full split/dividend adjustments for OHLCV
> - Single zip file makes downloading ~500 symbols a one step process
> - QuantQuote data quality means errors in many free sources (such as Yahoo) are not present.
> - For format information, please consult our minute resolution data documentation.
> Our active S&P500 daily resolution collection is provided completely free of charge and because of that, it is not covered under our lifetime support gauranty. Data is provided as is, with no warranty. However, if you do have questions about the data or find errors, please feel free to reach out to our support team at support@quantquote.com.
