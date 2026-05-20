-- Step 1 : Create the college database if it does not already exist
CREATE DATABASE IF NOT EXISTS college;
USE college;

-- Step 2 : Create the 'student' table with necessary columns
CREATE TABLE student (
	id INT PRIMARY KEY AUTO_increment, 
	-- Unique ID for each student (increases automatically)
    first_name VARCHAR(20),
    -- student's first name
    last_name VARCHAR(20),
    -- student's last name
    subject VARCHAR(20),
    -- select subject
    marks int,
    -- marks obtained
    grade varchar(2),
    -- grade achieved (e.g., A, B, C)
    city VARCHAR(20)
    -- student's city
    );
  
-- Step 3 : Insert data into the student table providing the custom ID
INSERT INTO student(id,first_name,last_name,subject,marks,grade,city) VALUES
(1,"Sapna","Prajapati","Maths",98,"A","Kanpur");

-- Step 4 : Insert multiple student records (ID will be generated automatically)
INSERT INTO student(first_name,last_name,subject,marks,grade,city) VALUES
("Ram","Singh","Science",76,"C", "Delhi"),
("Radha","Kumari", "Maths", 86, "B", "Pune"),
("Shri","Singh", "Computer", 94, "A", "Delhi"),
("Shyam","Yadav", "Science", 96, "A", "Mumbai"),
("Reenu","Prajapati", "Maths", 76, "C", "Mumbai"),
("Rani","Mukharji", "Physics", 12, "F", "Delhi"),
("Aman","Yadav", "Chemistry", 85, "B", "Pune"),
("Akash","Jatav", "Python", 76, "C", "Pune"),
("Rakesh","Jatav", "Java", 88, "B", "Delhi"),
("Priya","Rajput", "Science", 72, "C", "Mumbai"),
('Aarav', 'Sharma', 'Mathematics', 92, 'A', 'Delhi'),
('Diya', 'Patel', 'Science', 85, 'A', 'Mumbai'),
('Karan', 'Verma', 'English', 78, 'B', 'Lucknow'),
('Ananya', 'Iyer', 'Mathematics', 95, 'A', 'Chennai'),
('Kabir', 'Singh', 'Science', 64, 'C', 'Delhi'),
('Isha', 'Gupta', 'History', 88, 'A', 'Bangalore'),
('Rohan', 'Mehta', 'English', 45, 'D', 'Mumbai'),
('Sanya', 'Rao', 'Mathematics', 72, 'B', 'Hyderabad'),
('Amit', 'Joshi', 'Science', 55, 'C', 'Pune'),
('Meera', 'Nair', 'History', 91, 'A', 'Chennai'),
('Rahul', 'Mishra', 'Science', 81, 'A', 'Delhi'),
('Sneha', 'Deshmukh', 'Mathematics', 49, 'D', 'Pune'),
('Arjun', 'Reddy', 'History', 76, 'B', 'Hyderabad'),
('Pooja', 'Choudhary', 'English', 89, 'A', 'Jaipur'),
('Aditya', 'Sen', 'Mathematics', 68, 'B', 'Kolkata'),
('Riya', 'Kapoor', 'Science', 94, 'A', 'Mumbai'),
('Yash', 'Bansal', 'History', 42, 'E', 'Delhi'),
('Tanvi', 'Kulkarni', 'English', 73, 'B', 'Pune'),
('Dev', 'Joshi', 'Mathematics', 85, 'A', 'Ahmedabad'),
('Kriti', 'Saxena', 'Science', 61, 'C', 'Lucknow'),
('Vikram', 'Gill', 'History', 58, 'C', 'Chandigarh'),
('Nehal', 'Shah', 'English', 91, 'A', 'Ahmedabad'),
('Pranav', 'Pillai', 'Mathematics', 38, 'F', 'Bangalore'),
('Anjali', 'Sharma', 'Science', 77, 'B', 'Delhi'),
('Manish', 'Tiwari', 'History', 83, 'A', 'Varanasi'),
('Shreya', 'Das', 'English', 65, 'C', 'Kolkata'),
('Rishi', 'Malhotra', 'Mathematics', 79, 'B', 'Mumbai'),
('Prisha', 'Shetty', 'Science', 87, 'A', 'Bangalore'),
('Gaurav', 'Yadav', 'History', 52, 'D', 'Gurugram'),
('Siddharth', 'Jain', 'English', 96, 'A', 'Indore');

-- Select & view all columns
SELECT * FROM student;

-- Select & view some columns
SELECT first_name, subject, marks FROM student;

-- Q1. Find all students who belong to 'Delhi'.
SELECT * FROM student WHERE city='Delhi';

-- Q2. Find students who scored more than 90 marks.
SELECT * FROM student WHERE marks > 90;

-- Q3. Get the list of students who have 'Maths' or 'Science' as their subject.
SELECT * FROM student WHERE subject IN ('Maths','Science');

-- Q4. Count the total number of students in the table.
SELECT COUNT(*) AS total_student FROM student;

-- Q5. Find the highest (maximum) marks scored by any student.
SELECT MAX(marks) AS highest_marks FROM student;

-- Q6. Calculate the average marks of all students.
SELECT AVG(marks) AS avg_marks FROM student;

-- Q7. Display all the students ordered by their marks in decending order (Highest to Lowest). 
SELECT * FROM student ORDER BY marks DESC;

-- Q8. Find the total number of students from each city. 
SELECT city, COUNT(*) FROM student GROUP BY city; 

-- Q9. Find the all students whose names start with the letter 'R'. 
SELECT * FROM student WHERE first_name LIKE 'R%';

-- Q10. Find the student who scored the second highest marks.
SELECT * FROM student WHERE marks = (SELECT MAX(marks) FROM student WHERE marks < ( SELECT MAX(marks) FROM student ));

-- Q11. Display cities that have more than 2 students.
SELECT city, COUNT(*) AS number_of_students FROM student GROUP BY city HAVING COUNT(*) > 2; 

-- Q12. Find students who scored between 75 and 90 marks AND live in 'Delhi' or 'Pune'. 
SELECT * FROM student WHERE ( marks BETWEEN 75 AND 90) AND ( city IN ( 'Delhi', 'Pune'));

-- Q13. Find the average marks for each subjects where the average is above 80. 
SELECT subject, AVG(marks) AS avg_marks FROM student GROUP BY subject HAVING avg(marks) > 80;

-- Q14. Find the top 3 highest scoring students. 
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- Q15. Display 3 students from the table, but skip the first 2 students. 
SELECT * FROM student LIMIT 3 OFFSET 2;








    