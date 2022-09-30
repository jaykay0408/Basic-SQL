-- Q2-4: Multiple conditions
select *
from nasdaq_company
where sector = 'Finance'
  and industry = 'Major Banks';

-- Change BETWEEN into AND conditions
-- last_crawel_date between '2021-03-17' and '2021-03-19';


-- Query all data whose symbol is 'MSFT' or 'XXXX'


-- Query all data whose symbol is 'MSFT' or 'AMD' or 'AMZN'


-- Query all data whose sector is ‘Technology’ or ‘Consumer Services’, and symbol is ‘MSFT’, ‘AMD’, ‘AMZN’


