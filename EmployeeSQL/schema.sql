-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/BJFFnX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "tbl_departments" (
    "dept_no" char(4)   NOT NULL,
    "dept_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_tbl_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "tbl_dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" char(4)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_tbl_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "tbl_dept_manager" (
    "dept_no" char(4)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_tbl_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "tbl_employees" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "gender" char(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_tbl_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "tbl_salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL--,
	
-- Removing column id prior to importing table:	
	
--    "id" serial   NOT NULL,
--    CONSTRAINT "pk_tbl_salaries" PRIMARY KEY (
--        "id"
--     )
);

CREATE TABLE "tbl_titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(255)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL--,
	
-- Removing column id prior to importing table:	
	
--    "id" serial   NOT NULL,
--    CONSTRAINT "pk_tbl_titles" PRIMARY KEY (
--        "id"
--     )
);

--Removing all automatic generated constraints to import raw tables:

--ALTER TABLE "tbl_dept_emp" ADD CONSTRAINT "fk_tbl_dept_emp_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "tbl_employees" ("emp_no");

--ALTER TABLE "tbl_dept_emp" ADD CONSTRAINT "fk_tbl_dept_emp_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "tbl_departments" ("dept_no");

--ALTER TABLE "tbl_dept_manager" ADD CONSTRAINT "fk_tbl_dept_manager_dept_no_emp_no" FOREIGN KEY("dept_no", "emp_no")
--REFERENCES "tbl_dept_emp" ("dept_no", "emp_no");

--ALTER TABLE "tbl_salaries" ADD CONSTRAINT "fk_tbl_salaries_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "tbl_employees" ("emp_no");

--ALTER TABLE "tbl_titles" ADD CONSTRAINT "fk_tbl_titles_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "tbl_employees" ("emp_no");

