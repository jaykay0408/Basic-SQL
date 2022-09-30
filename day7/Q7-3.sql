-- Q7-3: Compare with D-1 Stock price
-- 3. Compare with D-1 Stock price
--   3-1. Today's closing price, D-1 closing price, diff and ratio
--        Today is 2021-10-07
--        Using Self-Join
SELECT
  t.symbol,
  t.date as t_date,
  CONVERT(t.close, DECIMAL(18,2)) AS t_close,
  y.date as y_date,
  CONVERT(y.close, DECIMAL(18,2)) AS y_close,
  CONVERT(t.close - y.close, DECIMAL(18,2)) AS diff_price,
  CONVERT((t.close - y.close) / y.close * 100, DECIMAL(18,2)) AS diff_ratio
FROM stock AS t JOIN stock AS y ON t.symbol = y.symbol 
     AND t.date = DATE_ADD(y.date, INTERVAL 1 DAY)
WHERE t.date = '2021-10-07'
  AND CONVERT(t.close - y.close, DECIMAL(18,2)) > 0
ORDER BY 1
;

--   3-2. Today's closing price, D-1 closing price, diff and ratio
--        Today is 2021-10-07
--        Using LEAD()


--   3-3. Today's closing price, D-1 closing price, diff and ratio
--        Today is 2021-10-07
--        Using LEAD()
--        Removing NULL


--   3-4. Top 3 companies most gain from D-1
--        Today is 2021-10-07
--        Using Self-Join


--   3-5. Top 3 companies most gain from D-1
--        Today is 2021-10-07
--        Using CTE


--   3-6. Top 3 most gain and top 3 most lose companies from D-1
--        Today is 2021-10-07
--        Using CTE and UNION


--   3-7. Today's closing price, D-1 closing price, diff and ratio
--        Today is 2021-10-07
--        Create temp table


--   3-8. Top 3 most gain and top 3 most lose companies from D-1
--        Today is 2021-10-07
--        Using temp table


