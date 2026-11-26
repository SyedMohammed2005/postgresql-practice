
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    bio TEXT,
    job_title VARCHAR(50) NOT NULL,
    salary INTEGER NOT NULL CHECK (salary > 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    hired_date DATE NOT NULL DEFAULT CURRENT_DATE,
    last_login TIMESTAMP,
    employment_status VARCHAR(20) NOT NULL DEFAULT 'Active'
        CHECK (employment_status IN ('Active', 'Inactive', 'On Leave', 'Terminated')),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    department_id INT REFERENCES departments(department_id) ON DELETE SET NULL,
    manager_id INT REFERENCES employees(employee_id) ON DELETE SET NULL
);
