-- Q5-1: Single row subquery
select industry 
  from industry_group 
 where num = (select num 
                from industry_group_symbol 
               where symbol = 'MSFT');

-- Retrieve name of industry for Microsoft (”MSFT”) and Amazon (“AMZN”)


