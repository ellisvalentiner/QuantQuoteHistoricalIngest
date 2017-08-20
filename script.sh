#!/bin/bash

export PGHOST=${PGHOST:-localhost}
export PGPORT=${PGPORT:-5432}
export PGDATABSE=${PGDATABSE:-postgres}
export PGUSER=${PGUSER:-postgres}
export DATA_SOURCE=${DATA_SOURCE:-http://quantquote.com/files/quantquote_daily_sp500_83986.zip}

# Assert database is reachable, and that schema and table exists
psql -f script.sql 2> err.log

# Jump to a temp directory
cd $(mktemp -d)

# Download the daily S&P 500 data
wget $DATA_SOURCE -O tmp.zip && unzip tmp.zip && rm tmp.zip

# Copy each file to a table in the schema
for i in $(find ./ -name '*.csv'); do
    file=$(basename $i .csv);
    ticker=${file#table\_}
    sed -i 's/$/'",$ticker"'/' "$i"
    psql -c "\copy SP500.daily FROM '${i}' WITH CSV";
done

# Clean up
rm -rf -- "$(pwd -P)" && cd /
