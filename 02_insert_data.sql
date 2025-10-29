INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);
\copy customers FROM 'lista.csv' DELIMITER ',' CSV HEADER;

UPDATE compañeros
SET equipo = '1'
WHERE matricula IN ('182829', '182451', '182934', '179761');  
