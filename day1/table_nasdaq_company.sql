USE nasdaq;
/****** Object:  Table nasdaq_company    Script Date: 8/27/2022 3:17:21 PM ******/
DROP TABLE nasdaq_company;

CREATE TABLE nasdaq_company(
	symbol varchar(255) NULL,
	company_name varchar(255) NULL,
	ipo_year int NULL,
	sector varchar(255) NULL,
	industry varchar(255) NULL,
	is_deleted varchar(5) NULL,
	last_crawel_date datetime NULL,
	open_price float NULL,
	high_price float NULL,
	low_price float NULL,
	close_price float NULL,
	adj_close_price float NULL
);

LOAD DATA LOCAL INFILE 'nasdaq/nasdaq_company.csv'
 INTO TABLE nasdaq_company
 FIELDS TERMINATED BY ','
 ENCLOSED BY '"'
 LINES TERMINATED BY '\r\n'
 IGNORE 1 ROWS;
