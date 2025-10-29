INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

\COPY alumnos from 'lista.csv' delimiter ',' CSV HEADER;

INSERT INTO equipos values (1,'QUESOEXTRA');

update alumnos set
nombre='CORAL',
equipo=1
where matricula='179761';

update alumnos set
nombre='BRYAN',
equipo=1
where matricula='182934';

update alumnos set
nombre='FERNANDA',
equipo=1
where matricula='182451';

update alumnos set
nombre='URIEL',
equipo=1
where matricula='182829';

update alumnos set
nombre='YAEL',
equipo=1
where matricula='181914';

update alumnos set
nombre='ANDRE',
equipo=1
where matricula='182085';
