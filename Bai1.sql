use task;
create table users(
	id bigint primary key auto_increment,
    username varchar(50),
    `role` varchar(10),
    email varchar(150)
);

insert into users(username, `role`, email) values ("felix", "premium", "felix.premium@role.com");
insert into users(username, `role`, email) values ("today", "regular", "today@gmail.com");
insert into users(username, `role`, email) values ("lucky", "guru", "lucky@role.com");
insert into users(username, `role`, email) values ("admin", "admin", "admin@admin.com");
insert into users(username, `role`, email) values ("home", "AdmiN", "home.sd@gmail.com");
insert into users(username, `role`, email) values ("solver", "regular", "solver.regular@ref.com");

select email 
from users 
where `role` != "admin" and `role` != "premium"
order by email asc;