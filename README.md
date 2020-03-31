# Employee Database: A Mystery in Two Parts
## Database generation
The given cvs files were imported in a PostgreSQL database, and an Entity Relationship Diagram was created, using http://www.quickdatabasediagrams.com, considering the following constraints:
1. tables "Employees" and "Departments" must have only unique values of employee numbers (field "emp_no") and department numbers (field "Dept_no") respectively, therefore these fields have been chosen as primary keys.
2. table "Dept_Manager" can have multiple entries of "dept_no" or "emp_no", since a manager can switch between departments, but assuming that a manager will never return to a department once he left it, the combination "dept_no"-"emp_no" were chosen as primary keys.
3. table "Dept_emp" have similar assumptions as in point 2, and it is being used as a joint table.
4. an additional id column was added to the tables "Salaries" and "Titles", which serve as primary keys, since field "emp_no" can have duplicates, considering that an employee might get a raise and/or change titles.

<img src=EmployeeSQL/Images/ERD.PNG >|
:-------------------------:|
Entity Relationship Diagram |

## Data Analysis
The 8 views required were created using the procedures stored in "query.sql" from this repository.

## Bonus 
After examining the data in table 1 and table 2, it seems that there is no difference in the average salaries for engineers, senior engineers assistant engineers and technical leaders. Same applies for staff and senior staff members. By including also the number of the employees grouped by title, it seems that this is a huge company, dominated by staff, senior staff, engineers and senior engineers, where staff members have the highest income. Considering this, it is highly unlikely that this company exists.

<img src=EmployeeSQL/Images/avgSalaries-Title.png>|
:-------------------------:|
Chart 1 |

 <img src=EmployeeSQL/Images/Salaries_hist.png> |
 :-------------------------:|
Chart 2 |

Finally, after checking the badge number, it seems indeed that this was a test (see table 1).

 <img src=EmployeeSQL/Images/badge_number.PNG> |
 :-------------------------:|
Table 1 |
