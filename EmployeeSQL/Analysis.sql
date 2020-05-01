-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT Employee_info.Emp_number, Employee_info.Last_name, Employee_info.First_name, Employee_info.Gender, Salaries.salary
FROM Employee_info
INNER JOIN Salaries ON
Employee_info.Emp_number = Salaries.Emp_number;

-- 2. List employees who were hired in 1986.
SELECT Employee_info.Last_name, Employee_info.First_name, Employee_info.Hire_date
FROM Employee_info
WHERE Employee_info.Hire_date >= '01/01/1986'
AND Employee_info.Hire_date <= '12/31/1986';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT Department.Dep_number, Department.Dep_name, Managers.Emp_number, Employee_info.First_name, Employee_info.Last_name, Managers.To_date, Managers.From_date
FROM Managers
INNER JOIN Department ON
Department.Dep_number = Managers.Dep_number
INNER JOIN Employee_info ON
Employee_info.Emp_number = Managers.Emp_number;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Employee_info.Emp_number, Employee_info.Last_name, Employee_info.First_name, Department.Dep_name, Employees.Dep_number
FROM Employee_info
INNER JOIN Employees ON
Employees.Emp_number = Employee_info.Emp_number
INNER JOIN Department ON
Department.Dep_number = Employees.Dep_number;


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT Employee_info.First_name, Employee_info.Last_name
FROM Employee_info
WHERE Employee_info.First_name = 'Hercules'
AND Employee_info.Last_name LIKE 'B%'
ORDER BY Employee_info.Last_name;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT Department.Dep_name, Department.Dep_number, Employee_info.Emp_number, Employee_info.Last_name, Employee_info.First_name, Employees.Dep_number
FROM Department
INNER JOIN Employees ON
Employees.Dep_number = Department.Dep_number
INNER JOIN Employee_info ON
Employees.Emp_number = Employee_info.Emp_number
WHERE Dep_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT Department.Dep_name, Department.Dep_number, Employee_info.Emp_number, Employee_info.Last_name, Employee_info.First_name, Employees.Dep_number
FROM Department
INNER JOIN Employees ON
Employees.Dep_number = Department.Dep_number
INNER JOIN Employee_info ON
Employees.Emp_number = Employee_info.Emp_number
WHERE Dep_name = 'Sales' OR Dep_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT Employee_info.Last_name
ORDER BY Employee_info.Last_name;
