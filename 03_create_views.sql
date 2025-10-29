CREATE VIEW vista_ti AS SELECT * FROM empleados WHERE departamento='TI';

CREATE VIEW equipo AS
SELECT a.matricula, a.apellido 
FROM integrantesEquipos i 
JOIN alumnos a 
ON i.matricula_alumno = a.matricula; 
