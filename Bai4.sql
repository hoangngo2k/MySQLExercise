use task;
create table grades(
	id bigint(5) primary key,
    `name` varchar(50),
    midterm1 int,
    midterm2 int,
    final int
);

insert into grades(id, `name`, midterm1, midterm2, final) values (42334, "David", 34, 54, 124);
insert into grades(id, `name`, midterm1, midterm2, final) values (54528, "Anthony", 100, 10, 50);
insert into grades(id, `name`, midterm1, midterm2, final) values (58754, "Jonathan", 49, 58, 121);
insert into grades(id, `name`, midterm1, midterm2, final) values (11000, "Jonty", 25, 30, 180);

select id, `name` 
from grades 
where final > midterm1 + midterm2
order by substring(`name`,1,3) asc;