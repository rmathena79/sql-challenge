-- This file contains the SQL commands to import all tables.
-- You will need to adjust paths for your particular setup.

COPY titles FROM './data/titles.csv' WITH (FORMAT csv, header);
COPY departments FROM './data/departments.csv' WITH (FORMAT csv, header);
COPY employees FROM './data/employees.csv' WITH (FORMAT csv, header);
COPY salaries FROM './data/salaries.csv' WITH (FORMAT csv, header);
COPY dept_emp FROM './data/dept_emp.csv' WITH (FORMAT csv, header);
COPY dept_manager FROM './data/dept_manager.csv' WITH (FORMAT csv, header);
