USE nasdaq;
/****** Object:  Table stock    Script Date: 8/27/2022 3:17:21 PM ******/
DROP TABLE stock;

CREATE TABLE stock(
	date datetime NULL,
	symbol varchar(255) NULL,
	open float NULL,
	high float NULL,
	low float NULL,
	close float NULL,
	adj_close float NULL,
	volume bigint NULL
);

LOAD DATA LOCAL INFILE 'nasdaq/stock.csv'
 INTO TABLE stock
 FIELDS TERMINATED BY ','
 ENCLOSED BY '"'
 LINES TERMINATED BY '\r\n'
 IGNORE 1 ROWS;
