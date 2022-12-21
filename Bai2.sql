use task;
create table products(
	id bigint primary key auto_increment,
    `name` varchar(50),
    price int,
    quantity int
);

insert into products(`name`, price, quantity) values ("felix", 10, 4);
insert into products(`name`, price, quantity) values ("today", 8, 5);
insert into products(`name`, price, quantity) values ("lucky", 20, 2);
insert into products(`name`, price, quantity) values ("admin", 40, 1);

select `name`, price*quantity
from products
order by price*quantity desc, `name` asc
limit 1;