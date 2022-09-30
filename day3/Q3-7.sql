-- Q3-7: FK
create table members (
member_id	int,
name		varchar(50),
address		varchar(50));

create table orders (
order_id	int,
member_id	int,
item		varchar(50),
ship		varchar(50));

alter table members
add primary key (member_id);

alter table orders
add foreign key (member_id) references members(member_id);

-- Insert Orders first


-- Insert Members


-- Insert Orders


