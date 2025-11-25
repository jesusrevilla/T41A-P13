INSERT INTO empleados (nombre, departamento, salario) VALUES
('Edgar', 'Ventas', 50000),
('Carlos', 'Piso', 60000),
('María', 'TI', 65000),
('Marco', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

\copy equipo FROM 'lista.csv' DELIMITER ',' CSV HEADER;
