-- List the employee number, last name, first name, sex, and salary of each employee.

Create view Question_1
As
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
from employees 
Join salaries
on employees.emp_no = salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

Create view Question_2
As
Select employees.last_name, employees.first_name,employees.hire_date
from employees
where employees.hire_date Like '%1986%'

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

Create view Question_3
As
Select departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from departments
Join dept_manager on departments.dept_no = dept_manager.dept_no
Join employees on dept_manager.emp_no = employees.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

Create view Question_4
As
Select dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
Join dept_emp on employees.emp_no = dept_emp.emp_no
Join departments on dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Create view Question_5
As
Select  employees.last_name, employees.first_name, employees.sex
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.

Create view Question_6
As
Select employees.emp_no, employees.last_name, employees.first_name
from employees
Join dept_emp on employees.emp_no = dept_emp.emp_no
Join departments on dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales'
						
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

Create view Question_7
As
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
Join dept_emp on employees.emp_no = dept_emp.emp_no
Join departments on dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales' or departments.dept_name = 'Development'

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Create view Question_8
As
Select employees.last_name,
count(employees.last_name) as "last_name_count"
from employees 
Group by employees.last_name
Order by "last_name_count" desc;
