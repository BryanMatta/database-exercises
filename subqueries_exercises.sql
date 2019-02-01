use employees;
select hire_date, first_name, last_name
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
);

select title
from titles as t
join employees as e
on e.emp_no = t.emp_no
where e.first_name = 'Aamod';

select e.first_name, e.last_name
from employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
where dm.to_date > curdate()
and e.gender = 'F';