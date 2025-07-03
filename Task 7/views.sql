CREATE VIEW vw_EmployeeDetails AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name,
    d.location
FROM 
    task6.dbo.Employee e
JOIN 
    task6.dbo.Department d ON e.dept_name = d.dept_name;


select * from vw_EmployeeDetails;

----1. Employees earning above ₹50,000 in the ‘Sales’ department
SELECT * 
FROM vw_EmployeeDetails
WHERE salary > 5000 ;

----2. Find the average salary in each department
SELECT dept_name, AVG(salary) AS avg_salary
FROM vw_EmployeeDetails
GROUP BY dept_name;


--Creating view

CREATE VIEW vw_TopPerformers AS               
SELECT 
    e.emp_id,
    e.emp_name,
    SUM(s.price) AS total_sales
FROM 
    task6.dbo.Employee e
JOIN 
    task6.dbo.Sales s ON e.emp_id = s.store_id
GROUP BY 
    e.emp_id, e.emp_name
HAVING 
    SUM(s.price) > 100000;


--Dropping view
drop view vw_TopPerformers;        --does not drop the actual table, Only the view is deleted


---Altering view

CREATE OR ALTER VIEW vw_SalesSummaryByStore AS
SELECT 
    store_id,
    store_name,
    product_name,
    SUM(price) AS total_sales
FROM 
    task6.dbo.Sales
GROUP BY 
    store_id, store_name, product_name;

select * from vw_SalesSummaryByStore;



--Views as not updatable in case of multiple tables
--Its a window to the atble. The schema is copied not the data.






