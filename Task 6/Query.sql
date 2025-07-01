select * from employee e;
select * from Employee;
select * from Sales;

select * from Employee e join Department d on e.dept_name=d.dept_name;

------ 1.List of employee having salry greater than average salary--------
select * from Employee
where salary> (select AVG(salary) from employee)


--(using join)
select * from Employee e 
join (select avg(salary) sal 
	from employee) avg_sal on e.salary>sal;

------- 2. Find highest salary employee in each department------------

SELECT e.*
FROM Employee e
JOIN (
    SELECT dept_name, MAX(salary) AS max_salary
    FROM Employee
    GROUP BY dept_name
) m
ON e.dept_name = m.dept_name AND e.salary = m.max_salary;

--------3. Departments which dont have employees-------------------------

select * from Department
where dept_name not in (Select distinct dept_name from Employee);


----(using correlated subquery)
select * from Department d where not exists (Select * from employee e where e.dept_name=d.dept_name);


-----4.Finding the stores whos sales where better than the average sales across all stores
select * from (select store_name,sum(price) as total_sales
				from sales
				group by store_name) sales
join  (select avg(total_sales) as sales from
				(select store_name,sum(price) as total_sales
				from sales group by store_name) x) avg_sales
on sales.total_sales>avg_sales.sales;

-- 5. Find employees with the highest salary
SELECT *
FROM Employee
WHERE salary >= ALL (
    SELECT salary FROM Employee
);


--6 Get departments that come alphabetically after all employee departments
SELECT *
FROM Department
WHERE dept_name > ALL (
    SELECT dept_name FROM Employee
);



