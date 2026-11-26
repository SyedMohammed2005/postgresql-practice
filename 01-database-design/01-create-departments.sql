
CREATE TABLE IF NOT EXISTS departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

INSERT INTO departments (department_name)
VALUES
('Human Resources'),
('Finance'),
('Engineering'),
('Marketing'),
('Sales');

SELECT * FROM departments;
