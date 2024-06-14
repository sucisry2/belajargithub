-- Active: 1718369971017@@127.0.0.1@5432@dibimbing_day1
CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

select
row_number() over (order by salary desc) as peringkat_gaji,
		employee,
		salary
    from employee_table et limit 3;