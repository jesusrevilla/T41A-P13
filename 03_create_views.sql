CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento = 'TI';

CREATE VIEW vista_matriculas AS
SELECT *
FROM alumnos
WHERE matricula in (179804, 182239);
