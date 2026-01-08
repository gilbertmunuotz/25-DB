# BENG23 – Database Systems Lab (Oracle)

## 📌 Project Overview
This repository contains the SQL scripts and solutions for **LAB TASK 2: Working with Multiple Tables** for the Database Systems course.

The database models a **college academic system** with courses, students, modules, and enrolments.  
It is implemented using **Oracle SQL** and tested on **Oracle Live SQL (cloud environment)**.


## 🗂 Database Description
The database consists of **four related tables**:

- **COURSE** – Stores academic programs offered by the college  
- **STUDENT** – Stores student personal details and their registered course  
- **MODULE** – Stores academic modules  
- **ENROLMENT** – A junction table linking students and modules, including marks and grades  

### Relationships
- One **course** can have many **students**
- A **student** is registered in at most one **course**
- Students can enroll in **many modules**
- Modules can be taken by **many students**
- The **ENROLMENT** table implements the many-to-many relationship

---

## 🛠 Technologies Used
- Oracle SQL
- Oracle Live SQL (Cloud)
- GitHub (Version Control & Collaboration)

---


## 🚀 How to Run the Project (Oracle Live SQL)

1. Go to: https://livesql.oracle.com
2. Log in with an Oracle account
3. Click **Start Coding**
4. Run the scripts in this order:
   - `beng23_lab2_schema.sql`
   - `beng23_lab2_data.sql`
5. Verify setup:
   ```sql
   SELECT * FROM course;
   SELECT * FROM student;
   SELECT * FROM module;
   SELECT * FROM enrolment;

