create table students (name varchar(20), age int, rollNo int);
insert into students  values('hardik', 12, 1);
insert into students  values('ankit', 14, 2);
insert into students  values('anamika', 15, 3);
select * from students;
desc students;
ALTER TABLE students Add(address varchar(30));
ALTER TABLE students MODIFY address int;
ALTER TABLE students RENAME COLUMN  address TO city;
ALTER TABLE students RENAME TO stud;

ALTER TABLE stud MODIFY city varchar(20);
SELECT * FROM  stud;
desc stud;
UPDATE stud SET city='Pune' WHERE rollNo=1;
UPDATE stud SET city='Delhi' WHERE age=14;
UPDATE stud SET city='Punjab' WHERE rollNo=3;
ALTER TABLE stud ADD PRIMARY KEY (rollNo);
