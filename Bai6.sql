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
insert into user2(first_name, second_name, attribute) values ("D", "Dalot", "351213%D_dalot%d1323");

select first_name, second_name, attribute
from user2
where position(concat("%", first_name, "_", second_name, "%") in binary attribute)!=0;