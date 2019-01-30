use employees;
select * from employees where first_name = 'Irena'
    and gender = 'm'
    or first_name = 'Vidya'
    and gender = 'm'
    or first_name = 'Maya'
    and gender = 'm'
    order by last_name asc, first_name asc;
select emp_no concat(first_name,' ', last_name) as full_name, hire_date
from employees
where last_name like 'e%e';
select * from employees where last_name like 'E%'
and last_name like '%e'
order by emp_no desc;
select * from employees where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25'
order by hire_date desc, birth_date
datediff(select curdate(), select hire_date);
select * from employees where last_name like '%q%'
and last_name not like'%qu%';