CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento='TI';

CREATE VIEW integrante_equipo AS
SELECT  apellido
FROM equipo
WHERE team = 1;
