USE nasdaq;
/****** Object:  Table industry_group    Script Date: 8/27/2022 3:17:21 PM ******/
DROP TABLE industry_group;

CREATE TABLE industry_group(
	num int NULL,
	industry varchar(255) NULL,
        comments varchar(255) NULL
);

LOAD DATA LOCAL INFILE 'nasdaq/industry_group.csv'
 INTO TABLE industry_group
 FIELDS TERMINATED BY ','
 ENCLOSED BY '"'
 LINES TERMINATED BY '\r\n'
 IGNORE 1 ROWS;

ALTER TABLE industry_group
