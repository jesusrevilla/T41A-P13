CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento = 'TI';

CREATE VIEW vista_equipo AS
SELECT *
FROM alumno_equipo
WHERE equipo=1;
