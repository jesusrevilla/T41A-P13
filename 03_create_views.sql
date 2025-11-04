
CREATE VIEW vista_ti AS
SELECT 
    nombre, 
    id, 
    departamento, 
    salario
FROM empleados
WHERE departamento = 'TI';


CREATE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE equipo = 'T41A-P13'; 
