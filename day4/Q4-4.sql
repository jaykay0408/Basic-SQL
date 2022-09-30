-- Q4-4: Cross Project
select
  a.industry,
  b.symbol
from industry_group as a 
  cross join industry_group_symbol as b
;
