-- Q7-5: Gain/Loss for Specific Company
--   5-1. Create Temp table for Specific Company
--         i) TSLA
--         ii) MSFT
--        Create mystock (temp) table
CREATE TEMPORARY TABLE mystock (
date datetime,
symbol varchar(255),
qty int,
price decimal(18,2)
);
INSERT INTO mystock VALUES('2019-01-02', 'TSLA', 10, 61.00);
INSERT INTO mystock VALUES('2019-05-23', 'TSLA', 20, 39.00);
INSERT INTO mystock VALUES('2019-07-14', 'TSLA', 5, 300.00);
INSERT INTO mystock VALUES('2019-01-07', 'MSFT', 3, 100.00);
INSERT INTO mystock VALUES('2019-08-07', 'MSFT', 6, 132.00);
INSERT INTO mystock VALUES('2019-11-29', 'MSFT', 2, 151.00);
SELECT * FROM mystock;

--   5-2. Gain/Loss of my stock
--         i) TSLA
--         ii) MSFT
--        from mystock (temp) table
--   * Export the result -> Visualization (Graph)


--   5-3. Gain/Loss per item (symbol)
--   * Export the result -> Visualization (Graph)


