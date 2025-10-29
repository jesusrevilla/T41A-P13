INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

\copy alumnos(matricula, apellido) FROM 'lista.csv' WITH (FORMAT CSV, HEADER TRUE);

INSERT INTO equipos values (1,'Cachorritas');

INSERT INTO alumno_equipo values
('177622',1),
('178974',1),
('179752',1),
('179800',1),
('181730',1),
('182483',1);
('183060',1);
