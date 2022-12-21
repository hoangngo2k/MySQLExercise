use task;
create table suspect (
	id bigint primary key auto_increment,
    `name` varchar(50),
    surname varchar(50),
    height int,
    weight int
);

insert into suspect(`name`, surname, height, weight) values ("John", "Doe", 165, 60);
insert into suspect(`name`, surname, height, weight) values ("Bill", "Green", 170, 67);
insert into suspect(`name`, surname, height, weight) values ("Fire", "Gareb", 172, 70);
insert into suspect(`name`, surname, height, weight) values ("Bill", "Gate", 165, 55);
insert into suspect(`name`, surname, height, weight) values ("Brew", "Grewn", 150, 50);
insert into suspect(`name`, surname, height, weight) values ("Joke", "Hach", 169, 50);

select id, `name`, surname
from suspect
where height <= 170 and `name` like 'b%' and surname like 'gre%n';