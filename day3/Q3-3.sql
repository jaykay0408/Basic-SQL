-- Q3-3: HAVING
select sector, industry
from nasdaq_company
group by sector, industry
having industry = 'Advertising';

-- List all values of sector who have more than 1000 companies’


-- List all possible combination of all sectors and ‘Advertising’ industry and more than 10 companies


