-- Q2-5: NULL
-- update nasdaq_company set sector = null where length(sector) = 0;
select *
from nasdaq_company
where sector is null;

-- Query all data whose sector is not null


