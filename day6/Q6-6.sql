-- Q6-6: Practice of Analysis functions
-- LAG(), LEAD()
select
  date,
  LAG(close) OVER (ORDER BY close ASC) as lag_price,
  LEAD(close) OVER (ORDER BY close ASC) as lead_price
from stock
where symbol = 'MSFT'
  and date >= '2021-01-01'
  and date < '2021-01-20'
;

-- offset 2
select
  date,
  LAG(close, 2) OVER (ORDER BY close ASC) as lag_price,
  LEAD(close, 2) OVER (ORDER BY close ASC) as lead_price
from stock
where symbol = 'MSFT'
  and date >= '2021-01-01'
  and date < '2021-01-20'
;

-- CUME_DIST()
select
  symbol,
  sector,
  round(close_price, 0),
  CUME_DIST() OVER (ORDER BY ROUND(close_price, 0) DESC) as cum_dist
from nasdaq_company
;

-- PERCENT_RANK()
select
  symbol,
  sector,
  round(close_price, 0),
  PERCENT_RANK() OVER (ORDER BY ROUND(close_price, 0) DESC) as pct_dist
from nasdaq_company
;

-- FIRST_VALUE(), LAST_VALUE()
select
  symbol,
  date,
  close,
  close - (FIRST_VALUE(close) OVER (PARTITION BY symbol ORDER BY close DESC))
from stock
where date >= '2021-01-01'
  and date < '2021-02-01'
order by symbol, date
;
