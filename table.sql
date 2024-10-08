create table employee(empid int,empname varchar(20),dept varchar(20),salary int);    --create 
insert into employee values(2,'arjun','btech',25000);
insert into employee values(4,'situ','mba',20000); 
insert into employee values(6,'manju','bba',40000);
insert into employee values(3,'varun','bba',15000);
insert into employee values(5,'seema','pharmacy',30000);
insert into employee values(7,'mohit','marine',45000);
insert into employee values(1,'ram','cse',20000);
insert into employee values(1,'sham','',20000);
select * from employee;

select empid, empname,dept,salary from employee where dept='bba' and salary<=40000;  --where clause
select * from employee where dept is null;    --is null
select * from employee where dept is not null;    --is not null
insert into employee (salary) values(1000);     --insert specific value 
update employee set empname='shruti' where salary=1000;    --update 
delete from employee where empid=6;         --delete
create view virtual as select dept, empname from employee; 
select * from virtual;


create table dept(dept varchar(20), empid int);
insert into dept values('cse',1);
insert into dept values('mba',4);
insert into dept values('bba',7);
insert into dept values('hm',10,100,20000);
alter table dept add courseno int;
update dept set courseno=10 where empid=7;
update dept set courseno=6 where empid=4;
update dept set courseno=2 where empid=1;
select courseno from dept where dept='mba';

select * from employee where empid in(select empid from dept where dept='cse'); 
select * from employee where empid not in(select empid from dept where dept='cse'); 
select * from employee where empid in(select empid from dept where dept='cse');
select * from dept;

select * from  employee inner join dept on employee.dept=dept.dept;
select employee.empid, employee.empname, dept.courseno from  employee inner join dept on employee.dept=dept.dept;
select * from  employee left join dept on employee.dept=dept.dept;
select * from  employee right join dept on employee.dept=dept.dept;

select * from  employee left join dept on employee.dept=dept.dept where dept.empid is null;
select * from  employee full join dept on employee.dept=dept.dept;








