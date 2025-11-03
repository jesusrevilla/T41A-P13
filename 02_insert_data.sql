INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);


\copy alumnos FROM 'lista.csv' DELIMITER ',' CSV HEADER;

INSERT INTO equipo6(matricula, apellido, numero_equipo) VALUES
('178920', 'Castro', 6),
('183016', 'Godinez', 6),
('182570', 'Marin', 6),
('178584', 'Rodríguez', 6),
('177888', 'Rodríguez', 6),
('175329', 'Casanova', 6);
