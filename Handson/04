USE Hands_on;
select concat(First_name, 'Works for', Last_name) as First_name
from employee;

select concat(employee.Last_name,' Works for' , Department.Mgrno) as 'Hierarchy' from employee
join Department on employee.Work_dept=Department.Dept_no order by employee.Last_name asc;
