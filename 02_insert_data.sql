-- 1. Datos para la tabla "empleados"
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);


\copy companeros(matricula, apellido) FROM 'lista.csv' (FORMAT TEXT, DELIMITER E'\t');
