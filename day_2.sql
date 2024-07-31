create table student2(rollNumber dec(4) primary key, studentName varchar(20) not null, registerationNumber dec(5) unique, 
course varchar(10), totalMarks dec(3) default(100), marksObtained dec(3), check(marksObtained<=totalMarks));
select * from student2;
desc student2; 
insert into student2 values(106, 'ramanuj', 1889, 'bse' , 100, 99);
insert into student2 values(107, 'chankya', 188, 'cse', 100, 10);
insert into student2 values(108, 'rabindernath tagore', 199, 'btech' , 100,80);
alter table student2