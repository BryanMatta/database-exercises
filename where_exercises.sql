use employees;
select * from employees where first_name = 'Irena'
    and gender = 'm'
    or first_name = 'Vidya'
    and gender = 'm'
    or first_name = 'Maya'
    and gender = 'm';
select * from employees where last_name like 'E%'
or last_name like '%e';
select * from employees where last_name like 'E%'
and last_name like '%e';
select * from employees where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25';
select * from employees where last_name like '%q%'
and last_name not like'%qu%';
