use task;
create table users1(
	id bigint primary key auto_increment,
    `name` varchar(50),
    score int
);

insert into users1(`name`, score) values ("felix", 3001);
insert into users1(`name`, score) values ("today", 2401);
insert into users1(`name`, score) values ("lucky", 2477);
insert into users1(`name`, score) values ("badmin", 2999);
insert into users1(`name`, score) values ("cba2", 2658);
insert into users1(`name`, score) values ("wc3", 6000);
insert into users1(`name`, score) values ("wp1", 2479);
insert into users1(`name`, score) values ("blanc", 2399);
insert into users1(`name`, score) values ("messi", 2478);
insert into users1(`name`, score) values ("mbappe", 2400);

select `name` 
from users1 
order by score desc 
limit 3, 5;