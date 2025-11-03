CREATE VIEW vista_ti AS
SELECT nombre, departamento, salario
FROM empleados
WHERE departamento = 'TI';

CREATE VIEW vista_equipo6 AS
SELECT 
    a.matricula, 
    a.apellido 
FROM 
    alumnos AS a
JOIN 
    equipo6 AS e ON a.matricula = e.matricula;
