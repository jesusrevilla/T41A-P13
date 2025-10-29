CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento='TI';

CREATE VIEW integrante_equipo AS
SELECT  Apellido, Matrícula
FROM equipo
WHERE team=1;
