-- Day 1: Lowest Opening Price per Stock
-- Source: DataLemur

-- Problem:
-- For each stock, find the lowest opening price (open).
-- Then order the results by price in descending order.

-- Table Schema:
-- stock_prices(date, ticker, open, high, low, close)

-- Approach:
-- 1. Group by ticker
-- 2. Use MIN(open) to get lowest price
-- 3. Order results in descending order

-- Concepts Used:
-- GROUP BY, Aggregation (MIN), ORDER BY

SELECT 
    ticker,
    MIN(open) AS min_price
FROM stock_prices
GROUP BY ticker
ORDER BY min_price DESC;
