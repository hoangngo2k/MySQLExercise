use task;
create table answers (	
	id bigint primary key auto_increment,	
    correct_answer varchar(50),    
    given_answer varchar(255)    
);

insert into answers(correct_answer, given_answer) values ("a", "a");
insert into answers(correct_answer) values ("a");
insert into answers(correct_answer, given_answer) values ("c", "b");

select id, if(strcmp(correct_answer, given_answer)=0, "correct", if(strcmp(correct_answer, given_answer)!=0 and given_answer is not null, "incorrect", ifnull(given_answer, "no_answer"))) as checks
from answers;
