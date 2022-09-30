USE nasdaq;
/****** Object:  Table industry_group_symbol    Script Date: 8/27/2022 3:17:21 PM ******/
DROP TABLE industry_group_symbol;

CREATE TABLE industry_group_symbol(
	num int NULL,
	symbol varchar(255) NULL
);

LOAD DATA LOCAL INFILE 'nasdaq/industry_group_symbol.csv'
 INTO TABLE industry_group_symbol
 FIELDS TERMINATED BY ','
 ENCLOSED BY '"'
 LINES TERMINATED BY '\r\n'
 IGNORE 1 ROWS;
