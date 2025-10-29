CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento='TI';

CREATE VIEW integrante_equipo AS
SELECT matricula, apellido
FROM equipo
WHERE equipo=1;
