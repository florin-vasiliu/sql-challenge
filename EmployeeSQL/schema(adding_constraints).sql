-- Adding all constraints

ALTER TABLE "tbl_dept_emp" ADD CONSTRAINT "fk_tbl_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "tbl_employees" ("emp_no");

ALTER TABLE "tbl_dept_emp" ADD CONSTRAINT "fk_tbl_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "tbl_departments" ("dept_no");

ALTER TABLE "tbl_dept_manager" ADD CONSTRAINT "fk_tbl_dept_manager_dept_no_emp_no" FOREIGN KEY("dept_no", "emp_no")
REFERENCES "tbl_dept_emp" ("dept_no", "emp_no");

-- Adding new column for many to one relationship constraint
ALTER TABLE "tbl_salaries" 
ADD COLUMN "id" SERIAL NOT NULL,
ADD CONSTRAINT "pk_tbl_salaries" PRIMARY KEY ("id");
ADD CONSTRAINT "fk_tbl_salaries_emp_no" FOREIGN KEY("emp_no") REFERENCES "tbl_employees" ("emp_no");

-- Adding new column for many to one relationship constraint
ALTER TABLE "tbl_titles" 
ADD COLUMN "id" SERIAL NOT NULL,
ADD CONSTRAINT "pk_tbl_titles" PRIMARY KEY("id"),
ADD CONSTRAINT "fk_tbl_titles_emp_no" FOREIGN KEY("emp_no") REFERENCES "tbl_employees" ("emp_no");

