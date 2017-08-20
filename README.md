# Quant Quote Historical Ingest

Script to ingest daily resolution stock data S&P500 companies into a Postgres database.

This repository facilitates the process of loading daily S&P500 quotes into a database for research purposes. Although the S&P500 index was created in 1957, data is only available for 1998 through July 31st, 2013.

## Data Source

The data provider is [QuantQuote](https://quantquote.com/historical-stock-data), a "leading provider of high resolution historical intraday stock data and live feeds."

> This collection of daily resolution data goes back to 1998 for all symbols currently active in the S&P500. It is updated quarterly, the last update was 07/31/2013 (for more frequent updates, contact us). While this data is available for free from multiple online sources, the QuantQuote Free Daily Data has several advantages not found elsewhere:
> - Full split/dividend adjustments for OHLCV
> - Single zip file makes downloading ~500 symbols a one step process
> - QuantQuote data quality means errors in many free sources (such as Yahoo) are not present.
> - For format information, please consult our minute resolution data documentation.
> Our active S&P500 daily resolution collection is provided completely free of charge and because of that, it is not covered under our lifetime support gauranty. Data is provided as is, with no warranty. However, if you do have questions about the data or find errors, please feel free to reach out to our support team at support@quantquote.com.

## Use

The scripts in this repository can be called directly, but you may want to set or change the Postgres environment variables.

```bash
git clone git@github.com:ellisvalentiner/QuantQuoteHistoricalIngest.git
chmod +x QuantQuoteHistoricalIngest/script.sh
QuantQuoteHistoricalIngest/script.sh
```
