# 📊 Institutional Data Analytics & Database System (BCA Portfolio)

Welcome to my public SQL portfolio project! As a **Bachelor of Computer Applications (BCA)** student, this repository is designed to demonstrate my core understanding of Relational Database Management Systems (RDBMS) and structured data analysis using **MySQL**.


# College Student Database Management

A relational database project designed to manage an analyze academic records using MySQL. This project demonstrates core SQL concepts, from table creation and data insertion to writting intermediate and advanced analytical queries.

---

## 🚀 Project Overview
This project contains a complete SQL script that sets up a database for a college environment. It manages student data such as names, subjects, marks, grades, and cities. Additionally, it includes 15+ practical query examples that solve real- worlds data analysis problems.

Currently, this repository features a production-ready **College Student Database script** containing complete table setups, optimized constraint controls, and **15 practical analytical queries** that simulate real-world data auditing in an educational institution.

---

## 🎯 Academic & Project Objectives
In our BCA curriculum, we cover the core theories of DBMS, schemas, and relational algebra. This project serves as a practical implementation of those concepts by demonstrating:
*   **Data Control & Optimization:** Automatic index generation through `AUTO_INCREMENT` Primary Keys.
*   **Data Aggregation:** Using functions like `COUNT`, `MAX`, and `AVG` to evaluate institutional performance.
*   **Advanced Logic Filtering:** Implementing nested subqueries, string pattern matching, and complex grouping constraints (`HAVING`).

---

## 🛠️ Tech Stack & Core Implementations

*   **Database Management System:** MySQL
*   **Language Syntax:** SQL (Structured Query Language)
*   **Key SQL Highlights:** Subqueries, Aggregations, Grouping Logic, Pattern Matching, Pagination Control.

---

## 📐 Database Architecture & Schema

The dataset is initialized inside a single, unified data entity designed for fast reporting pipelines:

### `student` Table Schema
| Column Name  | Data Type     | Constraints                | Purpose |
| :---         | :---          | :---                       | :--- |
| `id`         | `INT`         | `PRIMARY KEY AUTO_INCREMENT`| Unique institutional tracking number |
| `first_name` | `VARCHAR(20)` | -                          | Student's legal first name |
| `last_name`  | `VARCHAR(20)` | -                          | Student's family surname |
| `subject`    | `VARCHAR(20)` | -                          | Registered academic course |
| `marks`      | `INT`         | -                          | Evaluation score obtained (0 - 100) |
| `grade`      | `VARCHAR(2)`  | -                          | Assigned performance letter grade |
| `city`       | `VARCHAR(20)` | -                          | Residential regional domain |

---

## 🔍 Featured Query Architecture (15 Problem Statements)

The master script includes 15 highly targeted queries solving real-world administrative questions. Here is a breakdown of the logical levels implemented:

### 🔹 1. Basic Data Filtering & Sets
*   Extracting students by physical demographic constraints (`WHERE city='Delhi'`).
*   Finding specific subject boundaries using clean set validation (`WHERE subject IN ('Maths','Science')`).

### 🔹 2. Intermediate Aggregations & Pattern Matching
*   **Demographic Grouping:** Identifying active geographical regions (`GROUP BY city`).
*   **Regex / String Matching:** Extracting specific profiles using the wildcard operator (`WHERE first_name LIKE 'R%'`).
*   **Conditional Group Filtering:** Filtering group distributions *after* aggregation (`GROUP BY city HAVING COUNT(*) > 2`).

### 🔹 3. Advanced Analytical Logic
*   **Nested Non-Correlated Subquery:** Finding the absolute 2nd highest mark dynamically without hardcoding performance boundaries:
    ```sql
    SELECT * FROM student 
    WHERE marks = (SELECT MAX(marks) FROM student 
                   WHERE marks < (SELECT MAX(marks) FROM student));
