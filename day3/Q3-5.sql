-- Q3-5: Create Table
use atoidb;
create table atoi_test_table (
col_1 INT,
col_2 VARCHAR(50),
col_3 DATETIME
);
insert into atoi_test_table (col_1, col_2, col_3)
     values (1, 'AtoISQL', '2022-01-01');
desc atoi_test_table;
select * from atoi_test_table;

-- Create ”atoi_dml” with the following columns and insert data
-- col_1 (int), col_2 (varchar(50)), col_3 (datetime)
-- Insert (1, “AtoISQL”, “2022-01-01”)
-- Insert (2, “AtoISQL”, “2022-01-02”) without columns
-- Insert (3, “AtoISQL”)
-- Insert (4, “2022-01-04”, "AtoISQL") different orders
-- Insert multiple values


