
CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento = 'TI';

CREATE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE matricula IN ('177139', '177700'); 
