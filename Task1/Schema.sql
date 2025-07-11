CREATE TABLE Faculty (
  faculty_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  specialization VARCHAR(50),
  Salary FLOAT
);



CREATE TABLE Department (
  department_id INT PRIMARY KEY,
  hod_id INT,
  department_name VARCHAR(50),
  budget DECIMAL(10,2),
  FOREIGN KEY (hod_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE Hostel (
  hostel_id INT PRIMARY KEY,
  warden_id INT,
  hostel_name VARCHAR(50),
  capacity INT,
  is_boys_hostel BIT,
  FOREIGN KEY (warden_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  department_id INT,
  gender CHAR(1),
  email VARCHAR(50),
  dob DATE,
  is_hostler BIT,
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);



CREATE TABLE Room_Alloc (
  allocation_id INT PRIMARY KEY,
  student_id INT,
  hostel_id INT,
  room_number VARCHAR(50),
  allocated_on DATETIME,
  leave_date DATE,
  rent_paid DECIMAL(8,2),
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id)
);



INSERT INTO Faculty (faculty_id, name, email, specialization, Salary) VALUES
(101, 'Dr. Anjali Sharma', 'anjali@univ.edu', 'Artificial Intelligence', 120000),
(102, 'Dr. Ramesh Iyer', 'ramesh.iyer@univ.edu', 'Data Science', 115000),
(103, 'Dr. Farhan Khan', 'farhan.k@univ.edu', 'Cybersecurity', 98000),
(104, 'Dr. Meena Nair', 'meena.nair@univ.edu', 'VLSI Design', 125000),
(105, 'Dr. Ajay Kumar', 'ajay.k@univ.edu', 'Structural Engineering', 105000),
(106, 'Dr. Sneha Roy', 'sneha.r@univ.edu', 'Organic Chemistry', 110000),
(107, 'Dr. Vivek Gupta', 'vivek.g@univ.edu', 'Thermodynamics', 95000),
(108, 'Dr. Nalini Joshi', 'nalini.j@univ.edu', 'Robotics', 130000),
(109, 'Dr. Arvind Swamy', 'arvind.s@univ.edu', 'Machine Learning', 140000),
(110, 'Dr. Latha Menon', 'latha.m@univ.edu', 'Quantum Computing', 125000);

INSERT INTO Department (department_id, hod_id, department_name, budget) VALUES
(1, 101, 'Computer Science', 2500000.00),
(2, 102, 'Information Technology', 2200000.00),
(3, 103, 'Cybersecurity', 1800000.00),
(4, 104, 'Electronics & Communication', 2400000.00),
(5, 105, 'Civil Engineering', 2000000.00),
(6, 106, 'Chemistry', 1900000.00),
(7, 107, 'Mechanical Engineering', 2100000.00),
(8, 108, 'Mechatronics', 2150000.00),
(9, 109, 'Artificial Intelligence', 2600000.00),
(10, 110, 'Physics', 2300000.00);


INSERT INTO Hostel (hostel_id, warden_id, hostel_name, capacity, is_boys_hostel) VALUES
(1, 106, 'A Block', 120, 1),
(2, 107, 'B Block', 110, 0),
(3, 101, 'C Block', 100, 1),
(4, 102, 'D Block', 100, 0),
(5, 103, 'E Block', 90, 1),
(6, 104, 'F Block', 80, 0),
(7, 105, 'G Block', 70, 1),
(8, 108, 'H Block', 75, 0),
(9, 109, 'I Block', 85, 1),
(10, 110, 'J Block', 60, 0);


INSERT INTO Student (student_id, department_id, gender, email, dob, is_hostler) VALUES
(201, 1, 'M', 'rahul.p@univ.edu', '2003-02-14', 1),
(202, 2, 'F', 'nisha.k@univ.edu', '2002-08-25', 1),
(203, 3, 'M', 'arjun.r@univ.edu', '2003-06-10', 0),
(204, 4, 'F', 'lavanya.s@univ.edu', '2004-01-30', 1),
(205, 5, 'M', 'karthik.m@univ.edu', '2002-11-20', 1),
(206, 6, 'F', 'priya.j@univ.edu', '2003-03-18', 0),
(207, 7, 'M', 'sachin.t@univ.edu', '2002-09-14', 1),
(208, 8, 'F', 'ananya.l@univ.edu', '2003-05-08', 1),
(209, 9, 'M', 'vinay.d@univ.edu', '2003-12-12', 0),
(210, 10, 'F', 'shreya.n@univ.edu', '2002-07-04', 1);


INSERT INTO Room_Alloc (allocation_id, student_id, hostel_id, room_number, allocated_on, leave_date, rent_paid) VALUES
(301, 201, 1, 'A101', '2023-06-01 10:00:00', '2024-05-30', 25000.00),
(302, 202, 2, 'B102', '2023-07-15 11:00:00', '2024-06-10', 26000.00),
(303, 204, 4, 'D201', '2023-08-01 09:30:00', '2024-05-20', 24500.00),
(304, 205, 5, 'E105', '2023-06-20 08:00:00', '2024-05-25', 25500.00),
(305, 207, 7, 'G110', '2023-07-10 14:00:00', '2024-06-05', 24000.00),
(306, 208, 8, 'H103', '2023-08-15 12:30:00', '2024-05-28', 25000.00),
(307, 210, 10, 'J101', '2023-06-05 13:00:00', '2024-06-01', 26000.00),
(308, 201, 1, 'A102', '2024-06-01 10:00:00', NULL, 27000.00), -- renewed room
(309, 204, 4, 'D202', '2024-06-01 10:15:00', NULL, 26500.00), -- renewed room
(310, 207, 7, 'G111', '2024-06-01 11:00:00', NULL, 25000.00); -- renewed room


-------Query-----------

Select * from Student
Select * from Hostel
Select * from Room_Alloc
Select * from department
Select * from faculty