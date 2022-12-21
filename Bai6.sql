use task;
create table user2 (	
    first_name varchar(50),
    second_name varchar(50),
    attribute varchar(255)    
);

insert into user2(first_name, second_name, attribute) values ("Mikel", "Cover", "%Mikel_Cover%");
insert into user2(first_name, second_name, attribute) values ("Vincen", "Zo", "12345555");
insert into user2(first_name, second_name, attribute) values ("L", "Blanc", "%L_Blanc%");
insert into user2(first_name, second_name, attribute) values ("H", "Maguire", "%H_Maguire%");
insert into user2(first_name, second_name, attribute) values ("R", "Varane", null);
insert into user2(first_name, second_name, attribute) values ("D", "Dalot", "351213%D_Dalot%d1323");

select first_name, second_name, attribute
from user2, (	select concat("%", a.concatstr, "%") as concatstr1
						from (	select concat_ws("_", first_name, second_name) as concatstr 
								from user2	) as a	) as b
where position(b.concatstr1 in attribute)!=0 ;