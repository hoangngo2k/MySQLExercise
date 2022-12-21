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

select a.`name`
from (	select id, `name`, price*quantity as tich
		from products         
		order by tich desc, `name` asc) as a
limit 1;