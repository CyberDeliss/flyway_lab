create schema AGAFIA_TEMEROVA;


create table AGAFIA_TEMEROVA.EMPLOYEES(
    emp_id number,
    employee_name varchar,
    job_id number,
    dep_id number
);

create table AGAFIA_TEMEROVA.DEPARTMENTS(
    dep_id number,
    dep_name varchar
);

create table AGAFIA_TEMEROVA.JOBS(
    job_id number,
    job_name varchar
);

