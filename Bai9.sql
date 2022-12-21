use task;
create table full_year (	
	id bigint primary key auto_increment,
    newspaper varchar(50),
    subscriber varchar(50)
);

create table half_year (	
	id bigint primary key auto_increment,
    newspaper varchar(50),
    subscriber varchar(50)
);

insert into full_year(newspaper, subscriber) values ("the paragon herald", "crissy sepe");
insert into full_year(newspaper, subscriber) values ("the daily reporter", "tonie moreton");
insert into full_year(newspaper, subscriber) values ("morningtide daily", "erwin chetty");
insert into full_year(newspaper, subscriber) values ("daily breakfast", "tonie moreton");
insert into full_year(newspaper, subscriber) values ("independent weekly", "lavelle phu");

insert into half_year(newspaper, subscriber) values ("the daily reporter", "lavelle phu");
insert into half_year(newspaper, subscriber) values ("daily breakfast", "tonie moreton");
insert into half_year(newspaper, subscriber) values ("the paragon herald", "lia cover");
insert into half_year(newspaper, subscriber) values ("the community gazette", "lavelle phu");
insert into half_year(newspaper, subscriber) values ("nove daily", "lia cover");
insert into half_year(newspaper, subscriber) values ("nove daily", "joya buss");

select subscriber from full_year where newspaper like '%daily%'
union
select subscriber from half_year where newspaper like '%daily%'
order by subscriber asc;