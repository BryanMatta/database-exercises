use employees;
select distinct title from titles;
select distinct last_name from employees where last_name like 'E%e'
group by last_name;
select distinct last_name from employees where last_name like '%q%'
and last_name not like'%qu%';
select count(*) as Employees,gender from employees where first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya'
group by gender;