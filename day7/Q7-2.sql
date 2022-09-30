-- Q7-2: Stock price on 2021-10-06
--   2-1. Daily low, high and ratio
SELECT
  date,
  symbol,
  CONVERT(open, DECIMAL(18,2)) AS open,
  CONVERT(close, DECIMAL(18,2)) AS close,
  CONVERT(open - close, DECIMAL(18,2)) AS diff_price,
  CONVERT((close - open) / open * 100, DECIMAL(18,2)) AS diff_ratio,
  CONVERT(low, DECIMAL(18,2)) AS low,
  CONVERT(high, DECIMAL(18,2)) AS high,
  CONVERT(high - low, DECIMAL(18,2)) AS diff_high_price,
  CONVERT((high - low) / low * 100, DECIMAL(18,2)) AS diff_high_ratio
FROM stock
WHERE date = '2021-10-06'
;

--   2-2. Daily  ratio > 10%
--        Display in order


--   2-3. Daily  ratio > 10%  and  Display in order
--        Detailed info from nasdaq_company


