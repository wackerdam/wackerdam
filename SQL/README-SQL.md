README-SQL.md
# SQL Practice: Students, Courses, and Enrollments

This file contains SQL queries that demonstrate various join operations, aggregation, set operations, and cross joins. It utilizes a simple database with three tables:

* **students:** Stores student information (student_id, student_name, age, grade).
* **courses:** Stores course information (course_id, course_name).
* **enrollments:** Tracks student enrollments in courses (enrollment_id, student_id, course_id).

**Prerequisites**

* A SQL database management system (DBMS) to execute the queries (MySQL, PostgreSQL, SQLite, etc.).
* PostgreSQL was used in this case
* Basic knowledge of SQL syntax.

**Instructions**

1. **Create the Database:** Use the provided SQL code to create the `students`, `courses`, and `enrollments` tables, or adapt them to match your chosen DBMS syntax.

2. **Insert Data:** Insert the sample data into the tables.

3. **Explore the Queries:** 
    * Read the comments accompanying each query to understand its purpose.
    * Execute the queries in your SQL environment to examine the results.

**Key Concepts Demonstrated**

* **JOIN Types:** Inner Join, Left Join, Right Join (less common), Full Outer Join
* **Aggregation (GROUP BY):** Calculating counts (e.g., students per course).
* **Set Operations:** UNION, UNION ALL 
* **CROSS JOIN:** Generating all possible combinations.

**Learning Goals**

This SQL file is a practice resource. By experimenting with these queries, you can:

* **Solidify Understanding of Joins:** See how different join types combine and filter data.
* **Grasp Aggregation with 'GROUP BY':** Learn to compute summary statistics.
* **Master Set Operations:** Practice combining result sets. 

**Additional Notes**

* The sample dataset is intentionally small. These queries can be adapted to larger, more complex datasets.
* Consider creating your own questions and writing new queries to test your SQL skills on this database.

**Feel free to modify and extend these examples!** 