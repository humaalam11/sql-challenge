# SQL CHALLENGE
Creating an Entity Relationship Diagram (ERD) and Joining Table Views:

Working with Employee data where a specific company has collected various information of the people they have hired from 1980's to 1990's. The challenge is the data is split into 6 .csv files. To extract the data we need to upload all 6 files and figure out the relationship of each table to extract the information needed. 

*GOAL:* 
- Import all 6 '.csv' files into SQL
- Create an ERD
- Answer the following qestiions:
  1) List the employee number, last name, first name, sex, and salary of each employee.
  2) List the first name, last name, and hire date for the employees who were hired in 1986.
  3) List the manager of each department along with their department number, department name, employee number, last name, and first name.
  4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  6) List each employee in the Sales department, including their employee number, last name, and first name.
  7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

*Process:*
1) Import all .csv files:
   - Used the CREATE TABLE function to create the given table names, the columns and the state the data types for the datasets given. Then imported the .csv files into the tables. 
   - Created a ERD for the SQL Database tthat contained all 6 tables
   - Also, created a ERD using the Quick Database Website, by entering the table names and columns, including statinge data types and primary/ foreign keys
   
2) Answer given questions:
    - Used the JOIN function and the ERD to figure out the common columns to extract Employee Number, Last Name, First Name, etc..
    - Also used the LIKE and BETWEEN function to set filters and add multiple critereas
    - For question 8, used the COUNT and DESCENDING functions to calculate the last names that are duplicating in a list presented in descending order
