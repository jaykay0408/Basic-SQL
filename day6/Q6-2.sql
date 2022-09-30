-- Q6-1: Practice of Date functions
-- NOW(), CURRENT_TIMESTAMP()
select NOW();
select CURRENT_TIMESTAMP();

-- ADDDATE(), DATE_ADD()
select ADDDATE("2022-10-01", INTERVAL 1 DAY);
select ADDDATE("2022-10-01", INTERVAL -1 DAY);
select DATE_ADD("2022-10-01", INTERVAL 1 DAY);
select DATE_ADD("2022-10-01", INTERVAL -1 DAY);

-- DATEDIFF()
SELECT DATEDIFF("2017-06-25", "2017-06-15");

-- DAY(), MONTH(), YEAR()
select DAY(now()), MONTH(now()), YEAR(now());


