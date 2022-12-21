use task;
create table expressions (	
	id bigint primary key auto_increment,
    a int,
    b int,
    operation varchar(255),
    c int
);

insert into expressions(a, b, operation, c) values (2, 3, "+", 5);
insert into expressions(a, b, operation, c) values (2, 3, "+", 6);
insert into expressions(a, b, operation, c) values (3, 2, "/", 1);
insert into expressions(a, b, operation, c) values (4, 7, "*", 28);
insert into expressions(a, b, operation, c) values (54, 2, "-", 27);
insert into expressions(a, b, operation, c) values (3, 0, "/", 0);

select * 
from expressions
where if(strcmp(operation, "+")=0, a+b=c, if(strcmp(operation, "-")=0, a-b=c, if(strcmp(operation, "*")=0, a*b=c, a/b=c)));
