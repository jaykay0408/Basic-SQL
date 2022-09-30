-- Q4-3: Outer Join
-- Left Outer Join
select
  a.symbol as a_symbol,
  b.symbol as b_symbol
from nasdaq_company as a 
  left outer join industry_group_symbol as b on a.symbol = b.symbol
;

-- List all symbol in nasdaq_company + symbol in industry_group_symbol


-- Right Outer Join


-- Right Outer Join


-- Full Outer Join


