# For using Flyway locally 
## change _scripts/run_flyway.sh_
0. type your login and pass or link on them to **FLYWAY_USER** and **FLYWAY_PASSWORD** 

    type link on your **ACCOUNT** in snowflake like `ti53335.eu-central-1` 

    type path to **BASE_PATH** 

1. from this directory you can type this to console:
```
    sudo ./scripts/run_flyway.sh info
    sudo ./scripts/run_flyway.sh repair
    sudo ./scripts/run_flyway.sh migrate
```



# For using Flyway in GitHub actions
1. Choose Action
2. Choose "Database migrations"
3. Click on "Run workflow"
4. Choose an option that you want

# FlyWay Lab description
### Using Flyway locally

-   Create a schema in the database. Use your name as the schema name (FIRSTNAME_LASTNAME)
-   Create a versioned migration with the tables creation: EMPLOYEES(emp_id number, employee_name varchar, job_id number, dep_id number), DEPARTMENTS(dep_id number, dep_name varchar), JOBS(job_id number, job_name varchar)
-   Create a repeatable migration with a view creation: V_EMPLOYEES(employee_name, job_name, dep_name)
-   Apply all migrations to the database
-   Check the result. The database schema must contain 3 tables and 1 view with defined structures
-   Create a versioned migration with the EMPLOYEE table change. Add a new column SALARY(number)
-   Apply the migration
-   Check the result. The EMPLOYEES table must contain an extra column
-   Change the migration for the view V_EMPLOYEES: add the SALARY column
-   Apply the migration and check the result. The view V_EMPLOYEES must contain a SALARY column now
-   Rename the column EMPLOYEES.SALARY to EMPLOYEES.SALARY_ANNUAL with the help of a proper migration. Don’t forget to fix the query for the view V_EMPLOYEES
-   Rollback the previous migration with a new one
-   Create a versioned data migration. Add two rows to the EMPLOYEE table. Use appropriate values.  
    Apply the data migration
-   * Create a callback with a listing of all existing tables after the `info` command

### Using Flyway in GitHub actions(\*)

* This block may be more complicated than the previous one, but it is useful to complete it.

1.  Using Flyway with GitHub actions(using pipelines, secrets, and config parameters in yaml files)  
    - Create a simple repository with the database migrations  
    - Create a Github action with a trigger on a push to a certain branch  
    - The action can use the flyway docker image from Docker Hub. It needs to be initialized with values from GitHub secrets(user, password, and account name)  
    - Add an extra option for the manual start of the action: let a user choose a flyway command(`info`, `migrate`, `repair`) before manually starting the action