CREATE SCHEMA IF NOT EXISTS SP500;
CREATE TABLE IF NOT EXISTS SP500.daily (date timestamp, time int, open numeric, high numeric, low numeric, close numeric, volume numeric, ticker text);
