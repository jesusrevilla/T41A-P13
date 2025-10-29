CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento='TI';

CREATE VIEW vista_equipo AS
SELECT *
FROM alumnos
WHERE equipo=1;
