use Internship;

create table Room
(
  id int primary key, 
  owner_name varchar(30),
  rent int not null
);

insert into Room (id,owner_name,rent)
values(1,"Ashu",450000),
(2,"Niki",700000),
(3,"KAju",67777);

insert into Room values(4,"Darshu",67999);

update Room set owner_name="Darshana" where id=3;

delete from Room where id=1;

