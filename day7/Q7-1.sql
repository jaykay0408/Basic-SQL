-- Q7-1: Stock Price last 52 weeks
-- 1. Stock price last 52 weeks
--   1-1. Min, Max, Difference of max and min and ratio
--        Using Group By
SELECT
  symbol,
  CONVERT(MIN(close), DECIMAL(18,2)) AS w52_min,
  CONVERT(MAX(close), DECIMAL(18,2)) AS w52_max,
  CONVERT(MAX(close) - MIN(close), DECIMAL(18,2)) AS w52_diff,
  CONVERT((MAX(close) - MIN(close)) / MIN(close) * 100, DECIMAL(18,2)) AS w52_diff_ratio
FROM stock
WHERE date >= DATE_ADD('2021-10-04', INTERVAL -52 WEEK)
  AND date <= '2021-10-04'
GROUP BY symbol
;

--   1-2. Min, Max, Difference of max and min and ratio
--        Using Sub-query


--   1-3. Min, Max, Difference of max and min and ratio
--        Using Sub-query
--        When w52_min is 0


