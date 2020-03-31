--DATA ANALYSIS

--1. details for each employee: number, last name, first name, gender and salary
create view vw_req1 as
select tbl_employees.emp_no,tbl_employees.last_name,tbl_employees.first_name,tbl_employees.gender,tbl_salaries.salary 
from tbl_employees 
	join tbl_salaries 
		on tbl_employees.emp_no=tbl_salaries.emp_no;

--2. employees who were hired in 1986
create view vw_req2 as
select emp_no,last_name,first_name,gender,hire_date from tbl_employees
where  extract(year from hire_date)=1986;

--3. list of managers: dept no,dept name, the manager's employee no, last name, first name start and end employment dates
create view vw_req3 as
select tbl_dept_manager.dept_no, 
	tbl_departments.dept_name, 
	tbl_dept_emp.emp_no, 
	tbl_employees.first_name, 
	tbl_employees.last_name,
	tbl_dept_manager.from_date,
	tbl_dept_manager.to_date
from tbl_dept_manager
	join tbl_dept_emp 
		on tbl_dept_manager.dept_no = tbl_dept_emp.dept_no 
		and tbl_dept_manager.emp_no = tbl_dept_emp.emp_no
	join tbl_departments 
		on tbl_dept_manager.dept_no = tbl_departments.dept_no
	join tbl_employees
		on tbl_dept_manager.emp_no = tbl_employees.emp_no;
	
--4. list of the department of each employee: employee no, last name, first name, department name
create view vw_req4 as
select tbl_dept_emp.emp_no,
	tbl_employees.last_name,
	tbl_employees.first_name,
	tbl_departments.dept_name
from tbl_dept_emp
	join tbl_employees 
		on tbl_dept_emp.emp_no = tbl_employees.emp_no
	join tbl_departments
		on tbl_dept_emp.dept_no = tbl_departments.dept_no;
	
--5. list of all employees whose first name is Hercules and last name begin with "B"
create view vw_req5 as
select first_name,last_name from tbl_employees
where first_name = 'Hercules' and last_name like 'B%'

--6. list of all employees in the sales dept, including emp no, last name, first name and dept name
create view vw_req6 as
select tbl_dept_emp.emp_no,
	tbl_employees.last_name,
	tbl_employees.first_name,
	tbl_departments.dept_name
from tbl_dept_emp
	join tbl_employees
		on tbl_dept_emp.emp_no = tbl_employees.emp_no
	join tbl_departments
		on tbl_departments.dept_no=tbl_dept_emp.dept_no
where tbl_departments.dept_name='Sales'

--7. list of employees in the sales and development depts, including their employee no, last name, first name, and dept name
create view vw_req7 as
select tbl_dept_emp.emp_no,
	tbl_employees.last_name,
	tbl_employees.first_name,
	tbl_departments.dept_name
from tbl_dept_emp
	join tbl_employees
		on tbl_dept_emp.emp_no = tbl_employees.emp_no
	join tbl_departments
		on tbl_departments.dept_no=tbl_dept_emp.dept_no
where tbl_departments.dept_name='Sales' or tbl_departments.dept_name='Development'

--8. frequency of employee last names
create view vw_req8 as
select last_name,count(last_name) as "Frequency" from tbl_employees
group by last_name
order by last_name desc
	