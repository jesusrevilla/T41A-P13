\copy equipo FROM 'lista.csv' DELIMITER ',' CSV HEADER;

UPDATE equipo
SET team  = '1'
WHERE Matrícula IN ('182829', '182451', '182934', '179761');  
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);
