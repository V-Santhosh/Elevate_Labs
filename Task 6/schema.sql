CREATE TABLE Department (
    dept_id INTEGER PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(100)
);

-- Step 2: Insert 20 departments
INSERT INTO Department (dept_id, dept_name, location) VALUES
(1, 'Admin', 'Bangalore'),
(2, 'HR', 'Bangalore'),
(3, 'IT', 'Bangalore'),
(4, 'Finance', 'Mumbai'),
(5, 'Marketing', 'Delhi'),
(6, 'Operations', 'Hyderabad'),
(7, 'Sales', 'Chennai'),
(8, 'Legal', 'Delhi'),
(9, 'Design', 'Bangalore'),
(10, 'Product', 'Pune'),
(11, 'Quality Assurance', 'Mumbai'),
(12, 'Support', 'Noida'),
(13, 'Procurement', 'Kolkata'),
(14, 'Logistics', 'Hyderabad'),
(15, 'Engineering', 'Bangalore'),
(16, 'Strategy', 'Delhi'),
(17, 'Research', 'Chennai'),
(18, 'Training', 'Mumbai'),
(19, 'Security', 'Pune'),
(20, 'Content', 'Kolkata');



-- Step 3: Create the Employee table
CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INTEGER
);

-- Step 4: Insert 50 employees with varied departments and salaries
INSERT INTO Employee (emp_id, emp_name, dept_name, salary) VALUES
(100, 'Monica', 'Admin', 5000),
(101, 'Rosalin', 'IT', 6000),
(102, 'Ibrahim', 'IT', 8000),
(103, 'Vikram', 'IT', 8000),
(104, 'Ravi', 'HR', 5500),
(105, 'Sneha', 'Finance', 6200),
(106, 'Arjun', 'Marketing', 7200),
(107, 'Meena', 'Operations', 6900),
(108, 'Karan', 'Sales', 5800),
(109, 'Lakshmi', 'Legal', 9100),
(110, 'Divya', 'Design', 6600),
(111, 'Abhay', 'Product', 8800),
(112, 'Nisha', 'Quality Assurance', 5200),
(113, 'Surya', 'Support', 4700),
(114, 'Rekha', 'Procurement', 5700),
(115, 'Ajith', 'Logistics', 6100),
(116, 'Geetha', 'Engineering', 9400),
(117, 'Sahil', 'Strategy', 9900),
(118, 'Ritika', 'Research', 8300),
(119, 'Ramesh', 'Training', 7500),
(120, 'Ritika', 'Security', 5300),
(121, 'Rohit', 'Content', 6000),
(122, 'Snehal', 'Admin', 5600),
(123, 'Aman', 'Finance', 7900),
(124, 'Swati', 'Marketing', 8100),
(125, 'Bhanu', 'Operations', 6550),
(126, 'Preethi', 'Sales', 5450),
(127, 'Manish', 'Legal', 9950),
(128, 'Anjali', 'Design', 6300),
(129, 'Shyam', 'Product', 8750),
(130, 'Pavithra', 'Support', 4550),
(131, 'Dinesh', 'HR', 6100),
(132, 'Rachna', 'IT', 7700),
(133, 'Kavya', 'Admin', 5150),
(134, 'Vivek', 'Strategy', 8900),
(135, 'Neha', 'Research', 9350),
(136, 'Suresh', 'Training', 7000),
(137, 'Vidhya', 'Engineering', 9650),
(138, 'Shreya', 'Security', 4900),
(139, 'Naveen', 'Content', 5850),
(140, 'Ashok', 'Logistics', 6250),
(141, 'Maya', 'Finance', 5750),
(142, 'Akhil', 'Marketing', 7150),
(143, 'Indira', 'Operations', 6400),
(144, 'Jai', 'Sales', 5300),
(145, 'Tanvi', 'Legal', 8450),
(146, 'Sanjay', 'Product', 9050),
(147, 'Nimisha', 'Quality Assurance', 5400),
(148, 'Pradeep', 'Procurement', 6650),
(149, 'Reshma', 'Support', 4750),
(150, 'Karthik', 'IT', 8200);




