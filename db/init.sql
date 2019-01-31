drop table if exists students;
drop table if exists campus_data;


create table campus_data (
campus text primary key
  , program varchar(64) not null
  , campus_phone text not null
);

insert into campus_data (campus, program, campus_phone)
values ('Phoenix','Web','867-5309'),('Provo', 'Web', '666-6666'),('Dallas', 'IOS','555-5555');

create table students (
id serial primary key
  , name text not null
  , cohort integer not null
  , campus text references campus_data(campus)
  );

  insert into students (name,cohort,campus)
values ('Spencer',3,'Phoenix'),('Rebecca',3,'Phoenix'),('Ryan',7,'Phoenix')
,('Gary',7,'Phoenix'),('Gina',4,'Phoenix'),('John',3,'Dallas'),('Sarah',5,'Provo')
,('Sam',5,'Provo');

