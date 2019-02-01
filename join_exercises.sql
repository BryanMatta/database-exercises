use employees;
select * from dept_manager;
select * from departments;

select d.dept_name, concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
where dm.to_date > curdate()
order by dept_name;

select d.dept_name, concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
where dm.to_date > curdate()
and e.gender = 'F'
order by dept_name;

select *
from titles
join dept_emp on titles.emp_no = dept_emp.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where dept_emp.to_date > now()
and titles.to_date > now()
and departments.dept_name = 'Customer Service';

select departments.dept_name as 'Department Name',
  concat(managers.first_name, ' ', managers.last_name) as 'Name'
  salaries.salary as 'Salary'
from employees as managers
join dept_manager on dept_manager.emp_no = managers.emp_no
join salaries on salaries.emp_no = managers.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where salaries.to_date > now()
and dept_manager.to_date > now();