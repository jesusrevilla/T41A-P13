CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento='TI';

CREATE VIEW integrante_equipo AS
SELECT matricula, apellidos
FROM equipo
WHERE equipo=1;
