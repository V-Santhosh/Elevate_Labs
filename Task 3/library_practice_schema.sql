
-- Drop tables if they exist
DROP TABLE IF EXISTS Loan;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Branch;

-- Table: Branch
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(50),
    location VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Table: Member
CREATE TABLE Member (
    member_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    branch_id INT,
    registration_date DATE,
    membership_type VARCHAR(20),
    is_active BOOLEAN,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

-- Table: Book
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    genre VARCHAR(30),
    publish_year INT,
    availability_status VARCHAR(20),
    book_condition VARCHAR(20)
);

-- Table: Loan
CREATE TABLE Loan (
    loan_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    loan_date DATE,
    return_date DATE,
    fine DECIMAL(5,2),
    returned BOOLEAN,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);

-- Sample Data (Branch)
INSERT INTO Branch VALUES
(1, 'Central Library', 'Chennai', '044-2345678'),
(2, 'West End', 'Coimbatore', '0422-876543'),
(3, 'North Wing', 'Madurai', '0452-765432'),
(4, 'South Zone', 'Trichy', '0431-112233'),
(5, 'East Shelf', 'Salem', '0427-998877');

-- Sample Data (Member)
INSERT INTO Member VALUES
(101, 'Anand', 'anand@gmail.com', 1, '2022-01-01', 'Premium', TRUE),
(102, 'Priya', 'priya@gmail.com', 2, '2022-02-15', 'Regular', TRUE),
(103, 'Karthik', 'karthik@yahoo.com', 1, '2023-07-10', 'Regular', FALSE),
(104, 'Divya', 'divya@gmail.com', 3, '2024-01-05', 'Student', TRUE),
(105, 'Vikram', 'vikram@gmail.com', 2, '2023-08-01', 'Premium', TRUE),
(106, 'Sneha', 'sneha@outlook.com', 1, '2023-03-22', 'Regular', TRUE),
(107, 'Raj', 'raj@gmail.com', 3, '2024-03-01', 'Premium', TRUE),
(108, 'Sita', 'sita@yahoo.com', 4, '2022-11-12', 'Student', FALSE),
(109, 'Ajay', 'ajay@gmail.com', 5, '2023-05-18', 'Regular', TRUE),
(110, 'Meena', 'meena@gmail.com', 4, '2023-06-10', 'Student', TRUE),
(111, 'Hari', 'hari@gmail.com', 1, '2024-04-20', 'Premium', TRUE),
(112, 'Pooja', 'pooja@gmail.com', 2, '2022-09-13', 'Regular', TRUE),
(113, 'Arun', 'arun@gmail.com', 5, '2023-10-01', 'Premium', TRUE),
(114, 'Lakshmi', 'lakshmi@gmail.com', 3, '2024-01-20', 'Regular', TRUE),
(115, 'Sunil', 'sunil@yahoo.com', 1, '2022-06-25', 'Student', FALSE),
(116, 'Geetha', 'geetha@gmail.com', 4, '2023-12-01', 'Premium', TRUE),
(117, 'Manoj', 'manoj@gmail.com', 5, '2022-08-14', 'Regular', TRUE),
(118, 'Nithya', 'nithya@yahoo.com', 2, '2023-01-05', 'Student', TRUE),
(119, 'Sanjay', 'sanjay@gmail.com', 1, '2024-02-15', 'Regular', TRUE),
(120, 'Revathi', 'revathi@gmail.com', 3, '2023-07-22', 'Premium', TRUE);

-- Sample Data (Book)
INSERT INTO Book VALUES
(1001, 'Sapiens', 'Yuval Noah Harari', 'History', 2011, 'Available', 'Good'),
(1002, 'Clean Code', 'Robert C. Martin', 'Programming', 2008, 'Borrowed', 'Good'),
(1003, 'Atomic Habits', 'James Clear', 'Self-help', 2018, 'Available', 'Fair'),
(1004, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 'Lost', 'Damaged'),
(1005, 'Zero to One', 'Peter Thiel', 'Business', 2014, 'Available', 'Good'),
(1006, '1984', 'George Orwell', 'Dystopian', 1949, 'Available', 'Good'),
(1007, 'The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 1999, 'Available', 'Fair'),
(1008, 'Deep Work', 'Cal Newport', 'Self-help', 2016, 'Borrowed', 'Good'),
(1009, 'Thinking Fast and Slow', 'Daniel Kahneman', 'Psychology', 2011, 'Available', 'Good'),
(1010, 'Start With Why', 'Simon Sinek', 'Leadership', 2009, 'Available', 'Fair'),
(1011, 'Ikigai', 'Francesc Miralles', 'Self-help', 2016, 'Available', 'Good'),
(1012, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 1997, 'Lost', 'Fair'),
(1013, 'The Lean Startup', 'Eric Ries', 'Business', 2011, 'Available', 'Good'),
(1014, 'Dune', 'Frank Herbert', 'Science Fiction', 1965, 'Borrowed', 'Good'),
(1015, 'The Power of Habit', 'Charles Duhigg', 'Self-help', 2012, 'Available', 'Good'),
(1016, 'Steve Jobs', 'Walter Isaacson', 'Biography', 2011, 'Available', 'Fair'),
(1017, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 'Available', 'Damaged'),
(1018, 'Outliers', 'Malcolm Gladwell', 'Psychology', 2008, 'Available', 'Good'),
(1019, 'Grit', 'Angela Duckworth', 'Self-help', 2016, 'Borrowed', 'Fair'),
(1020, 'Becoming', 'Michelle Obama', 'Biography', 2018, 'Available', 'Good');

-- Sample Data (Loan)
INSERT INTO Loan VALUES
(201, 101, 1001, '2024-01-01', '2024-01-10', 0.00, TRUE),
(202, 102, 1002, '2024-03-10', NULL, 0.00, FALSE),
(203, 103, 1003, '2024-04-01', '2024-04-11', 15.00, TRUE),
(204, 104, 1004, '2024-05-01', NULL, 0.00, FALSE),
(205, 105, 1005, '2024-06-01', NULL, 0.00, FALSE),
(206, 106, 1006, '2024-05-15', '2024-05-25', 0.00, TRUE),
(207, 107, 1007, '2024-05-20', NULL, 5.00, FALSE),
(208, 108, 1008, '2024-03-01', '2024-03-15', 2.50, TRUE),
(209, 109, 1009, '2024-02-01', '2024-02-10', 0.00, TRUE),
(210, 110, 1010, '2024-01-15', '2024-01-25', 0.00, TRUE),
(211, 111, 1011, '2024-06-01', NULL, 0.00, FALSE),
(212, 112, 1012, '2024-04-05', '2024-04-15', 10.00, TRUE),
(213, 113, 1013, '2024-03-01', '2024-03-10', 0.00, TRUE),
(214, 114, 1014, '2024-02-10', NULL, 7.00, FALSE),
(215, 115, 1015, '2024-01-10', '2024-01-20', 0.00, TRUE),
(216, 116, 1016, '2024-02-15', NULL, 0.00, FALSE),
(217, 117, 1017, '2024-03-20', '2024-03-30', 3.00, TRUE),
(218, 118, 1018, '2024-05-01', NULL, 0.00, FALSE),
(219, 119, 1019, '2024-06-01', NULL, 1.00, FALSE),
(220, 120, 1020, '2024-06-05', NULL, 0.00, FALSE);

-- Sample Data (Book)
INSERT INTO Book VALUES
(1001, 'Sapiens', 'Yuval Noah Harari', 'History', 2011, 'Available', 'Good'),
(1002, 'Clean Code', 'Robert C. Martin', 'Programming', 2008, 'Borrowed', 'Good'),
(1003, 'Atomic Habits', 'James Clear', 'Self-help', 2018, 'Available', 'Fair'),
(1004, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 'Lost', 'Damaged'),
(1005, 'Zero to One', 'Peter Thiel', 'Business', 2014, 'Available', 'Good'),
(1006, 'Deep Work', 'Cal Newport', 'Productivity', 2016, 'Available', 'Good'),
(1007, 'The Lean Startup', 'Eric Ries', 'Business', 2011, 'Borrowed', 'Good'),
(1008, '1984', 'George Orwell', 'Fiction', 1949, 'Available', 'Fair'),
(1009, 'Thinking Fast and Slow', 'Daniel Kahneman', 'Psychology', 2011, 'Available', 'Good'),
(1010, 'Python Crash Course', 'Eric Matthes', 'Programming', 2015, 'Available', 'Good'),
(1011, 'Digital Minimalism', 'Cal Newport', 'Technology', 2019, 'Available', 'Good'),
(1012, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 1997, 'Borrowed', 'Good'),
(1013, 'Ikigai', 'Héctor García', 'Philosophy', 2016, 'Available', 'Good'),
(1014, 'Wings of Fire', 'A.P.J Abdul Kalam', 'Biography', 1999, 'Available', 'Good'),
(1015, 'The Monk Who Sold His Ferrari', 'Robin Sharma', 'Self-help', 1997, 'Available', 'Fair'),
(1016, 'Rework', 'Jason Fried', 'Business', 2010, 'Borrowed', 'Good'),
(1017, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'Self-help', 2016, 'Available', 'Fair'),
(1018, 'Cracking the Coding Interview', 'Gayle Laakmann', 'Programming', 2015, 'Available', 'Good'),
(1019, 'Start With Why', 'Simon Sinek', 'Motivation', 2009, 'Available', 'Good'),
(1020, 'Invisible Man', 'Ralph Ellison', 'Fiction', 1952, 'Lost', 'Damaged');

-- Sample Data (Loan)
INSERT INTO Loan VALUES
(201, 101, 1001, '2024-01-01', '2024-01-10', 0.00, TRUE),
(202, 102, 1002, '2024-03-10', NULL, 0.00, FALSE),
(203, 103, 1003, '2024-04-01', '2024-04-11', 15.00, TRUE),
(204, 104, 1004, '2024-05-01', NULL, 0.00, FALSE),
(205, 105, 1005, '2024-06-01', NULL, 0.00, FALSE),
(206, 106, 1006, '2024-01-10', '2024-01-20', 5.00, TRUE),
(207, 107, 1007, '2024-01-15', NULL, 0.00, FALSE),
(208, 108, 1008, '2024-02-01', NULL, 0.00, FALSE),
(209, 109, 1009, '2024-02-20', '2024-03-01', 0.00, TRUE),
(210, 110, 1010, '2024-03-05', NULL, 10.00, FALSE),
(211, 111, 1011, '2024-03-10', '2024-03-20', 0.00, TRUE),
(212, 112, 1012, '2024-04-01', NULL, 0.00, FALSE),
(213, 113, 1013, '2024-04-10', '2024-04-18', 0.00, TRUE),
(214, 114, 1014, '2024-04-20', NULL, 0.00, FALSE),
(215, 115, 1015, '2024-05-01', NULL, 0.00, FALSE),
(216, 116, 1016, '2024-05-05', NULL, 25.00, FALSE),
(217, 117, 1017, '2024-05-10', '2024-05-15', 0.00, TRUE),
(218, 118, 1018, '2024-05-15', NULL, 0.00, FALSE),
(219, 119, 1019, '2024-06-01', NULL, 0.00, FALSE),
(220, 120, 1020, '2024-06-05', NULL, 0.00, FALSE);
