-- Q6-5: Practice of WINDOW functions
-- ROW_NUMBER()
-- Assign ranking to close_price with descending order
select 
  symbol, sector,
  round(close_price, 0),
  ROW_NUMBER() OVER(ORDER BY ROUND(close_price, 0) DESC)
from nasdaq_company;
 
-- Assign ranking to close_price with descending order for each sector
select 
  symbol, sector,
  round(close_price, 0),
  ROW_NUMBER() OVER(PARTITION BY sector ORDER BY ROUND(close_price, 0) DESC)
from nasdaq_company;

-- RANK()
select 
  symbol, sector,
  round(close_price, 0),
  RANK() OVER(ORDER BY ROUND(close_price, 0) DESC)
from nasdaq_company;

-- DENSE_RANK()
select 
  symbol, sector,
  round(close_price, 0),
  DENSE_RANK() OVER(ORDER BY ROUND(close_price, 0) DESC)
from nasdaq_company;

-- NTILE()
select 
  symbol, sector,
  round(close_price, 0),
  NTILE(1000) OVER(ORDER BY ROUND(close_price, 0) DESC)
from nasdaq_company;

