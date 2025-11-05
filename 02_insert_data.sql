INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

COPY lista(matricula, apellido)
FROM '/home/runner/work/T41A-P13/T41A-P13/lista.csv'
DELIMITER ',' CSV HEADER;
