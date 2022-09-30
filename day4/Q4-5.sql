-- Q4-5: self join
select
  a.date as a_date,
  a.close as a_close,
  b.date as b_date,
  b.close as b_close,
  b.close - a.close as diff_close
from stock as a
  left outer join stock as b on a.date = date_add(b.date, interval -1 day)
where a.symbol = 'MSFT' and b.symbol = 'MSFT'
  and a.date >= '2021-10-01' and a.date < '2021-11-01'
  and b.date >= '2021-10-01' and b.date < '2021-11-01'
;
