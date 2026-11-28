-- CREATE TABLE employees1(
--     employee_id INTEGER,
--     employee_name VARCHAR(100),
--     salary NUMERIC(10, 2),
--     is_active BOOLEAN,
--     joining_date DATE
-- );

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'employees1';


INSERT INTO employees1(
        employee_id,
        employee_name,
        salary,
        is_active,
        joining_date
    )
VALUES (101, 'Rahul', 45000.50, TRUE, '2026-11-28');

SELECT * FROM employees1;