\COPY datos(Matrícula, Apellido) FROM 'lista.csv' WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);
