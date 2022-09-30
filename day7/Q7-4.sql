-- Q7-4: Continuing Gain for a period
-- 4. Continuing Gain for a period
--   4-1. Start close and End close price, difference and ratio
--        Period: 2021-02-17 ~ 2021-02-24
--        Create temp table
CREATE TEMPORARY TABLE temp
SELECT
  a.symbol,
  a.close AS a_close,
  b.close AS b_close,
  b.close - a.close AS close_diff,
  (b.close - a.close) / a.close * 100 AS ratio_diff
FROM (
      SELECT symbol, close FROM stock WHERE date = '2021-02-17'
     ) AS a JOIN (
      SELECT symbol, close FROM stock WHERE date = '2021-02-24'
     ) AS b ON a.symbol = b.symbol
;
SELECT * FROM temp;

--   4-2. Daily close of companies with +10% gain
--        Period: 2021-02-17 ~ 2021-02-24
--        Create temp2 table (using temp)


--   4-3. Compare daily close using ROW_NUMBER()
--        Period: 2021-02-17 ~ 2021-02-24
--        Create temp3 table


--   4-4. Compare daily close using ROW_NUMBER()
--        Period: 2021-02-17 ~ 2021-02-24
--        NO daily losing
--        Create temp4 table


--   4-5. Compare daily close using ROW_NUMBER()
--        Period: 2021-02-17 ~ 2021-02-24
--        Details of company info (nasdaq_company)


