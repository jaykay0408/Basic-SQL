-- Q4-2: Join 3 tables
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
