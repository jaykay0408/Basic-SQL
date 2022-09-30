-- Q5-2: Multiple rows subquery
select industry 
  from industry_group 
 where num in (select num 
                from industry_group_symbol 
               where symbol in ('MSFT','AMZN'));

-- Q4-2: Join 3 tables
/*
select
  a.industry,
  c.symbol,
  c.company_name,
  c.ipo_year,
  c.sector
from industry_group as a
  inner join industry_group_symbol as b on a.num = b.num
  inner join nasdaq_company as c on b.symbol = c.symbol
where a.industry = 'Automotive'
order by symbol
;
*/


-- Same as above, but not ‘Automotive’


-- ANY (at least one of subquery): Retrieve name of industry for Microsoft (”MSFT”) and Amazon (“AMZN”)


-- < ANY (minimum of subquery): Retrieve name of industry whose number is less than Microsoft (”MSFT”) and Amazon (“AMZN”)


-- > ANY (maximum of subquery): Retrieve name of industry whose number is higher than Microsoft (”MSFT”) and Amazon (“AMZN”)


-- EXISTS (at least 1 row from subquery): Retrieve name of industry for 5021 and 5028 


-- NOT EXISTS (no rows from subquery): Retrieve name of industry except for 5021 and 5028



