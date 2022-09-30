-- Q5-5: CTE
WITH cte_stock_price (date, symbol, price)
AS (
  select date, symbol, close
    from stock
   where date >= '2021-01-01'
     and date <= '2021-01-10'
)
select *
  from cte_stock_price
 where symbol = 'MSFT'
;

-- Create CTE table for stock price between ‘2021-01-01’ and ‘2021-01-10’ + between ‘2021-02-01’ and ‘2021-02-07’, then select ‘MSFT’ stock price 
-- Hint: UNION ALL


-- Create CTE table for stock price between ‘2021-01-01’ and ‘2021-01-10’, but not in between ‘2021-01-07’ and ‘2021-01-20’, then select ‘MSFT’ stock price
-- Error
/*
WITH cte_stock_price (date, symbol, price)
AS (
  select date, symbol, close
    from stock
   where date >= '2021-01-01'
     and date <= '2021-01-10'
  INTERSECT
  select date, symbol, close
    from stock
   where date >= '2021-01-07'
     and date <= '2021-01-20'
)
select *
  from cte_stock_price
 where symbol = 'MSFT'
;
*/
