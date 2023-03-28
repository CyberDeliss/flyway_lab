use schema AGAFIA_TEMEROVA;
create view V_EMPLOYEES(
    employee_name,
    job_name,
    dep_name

    )AS select distinct
        e.employee_name,
        j.job_name,
        d.dep_name

        from AGAFIA_TEMEROVA.EMPLOYEES e
        join AGAFIA_TEMEROVA.DEPARTMENTS d
          on e.dep_id = d.dep_id
        join AGAFIA_TEMEROVA.JOBS j
          on e.job_id = j.job_id
;
