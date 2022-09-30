-- Q7-6: Moving average (5MA, 20MA)
--   6-1. 5MA and 20MA from current
SELECT
  a.date,
  a.symbol,
  a.close,
  MIN(b.date) AS day5_start,
  MAX(DATE_ADD(b.date, INTERVAL 5 DAY)) AS day5_end,
  AVG(b.close) AS day5_close,
  MIN(c.date) AS day20_start,
  MAX(DATE_ADD(c.date, INTERVAL 20 DAY)) AS day20_end,
  AVG(c.close) AS day20_close
FROM stock AS a LEFT OUTER JOIN stock AS b 
                  ON a.symbol=b.symbol 
                     AND a.date <= DATE_ADD(b.date, INTERVAL 5 DAY)
                     AND a.date >= b.date
                LEFT OUTER JOIN stock as c
                  ON a.symbol=c.symbol 
                     AND a.date <= DATE_ADD(c.date, INTERVAL 20 DAY)
                     AND a.date >= c.date
WHERE a.symbol = 'MSFT'
GROUP BY a.date, a.symbol, a.close
ORDER BY a.date
;
  
--   6-2. 5MA and 20MA from current
--        Correct error: weekend, holiday
--   * Export the result -> Visualization (Graph)


