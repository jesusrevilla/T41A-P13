
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

-- 2. Cargar datos de lista.csv en la tabla "companeros"
\copy companeros(matricula, apellido) FROM 'lista.csv' DELIMITER ',' CSV;
