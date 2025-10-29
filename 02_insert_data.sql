INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

\copy lista (matricula, apellido)
FROM 'lista.csv'
DELIMITER ','
CSV HEADER;

INSERT INTO equipo_cachorritas (matricula)
VALUES 
(179752),
(177622),
(182483),
(179800),
(183060)
ON CONFLICT (matricula) DO NOTHING;
