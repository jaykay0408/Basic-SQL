-- Q5-4: Scalar Subquery
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
  (select company_name from nasdaq_company as b 
    where b.symbol = a.symbol) AS company_name,
  (select ipo_year from nasdaq_company as b
    where b.symbol = a.symbol) AS ipo_year,
  (select sector from nasdaq_company as b
    where b.symbol = a.symbol) AS sector,
  (select industry from nasdaq_company as b
    where b.symbol = a.symbol) AS industry,
  a.date,
  a.open,
  a.high,
  a.low,
  a.close,
  a.adj_close,
  a.volume
from stock as a
where a.symbol = 'MSFT'
  and a.date >= '2021-10-01'
  and a.date < '2021-11-01'
;

