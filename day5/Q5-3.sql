-- Q5-3:In line view
/*
-- Q4-1: Join 2 tables
use nasdaq;
select
  a.symbol,
  a.company_name,
  a.ipo_year,
  a.sector,
  a.industry,
  b.date,
  b.open,
  b.high,
  b.low,
  b.close,
  b.adj_close,
  b.volume
from nasdaq_company as a
  inner join stock as b on a.symbol = b.symbol
where a.symbol = 'MSFT'
  and b.date >= '2021-10-01'
  and b.date < '2021-11-01'
;
*/
select
  a.symbol,
  a.company_name,
  a.ipo_year,
  a.sector,
  a.industry,
  b.date,
  b.open,
  b.high,
  b.low,
  b.close,
  b.adj_close,
  b.volume
from nasdaq_company as a
  inner join (select symbol, date, open, high, low, close, adj_close, volume
                from stock 
               where symbol = 'MSFT'
                 and date >= '2021-10-01'
                 and date < '2021-11-01') as b on a.symbol = b.symbol
;

