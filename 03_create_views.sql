--CREATE VIEW vista_ti AS 
--SELECT id, nombre, departamento, salario
--FROM empleados WHERE departamento = 'TI';
CREATE OR REPLACE VIEW vista_ti AS
SELECT nombre, id, departamento, salario
FROM empleados WHERE departamento = 'TI';



--CREATE VIEW vista_mi_equipo AS
--SELECT matricula, apellido
--FROM compañeros WHERE matricula IN ('182239', '179804');

--CREATE OR REPLACE VIEW vista_mi_equipo AS
--SELECT matricula, apellido
--FROM compañeros WHERE matricula IN ('182239', '179804');

CREATE OR REPLACE VIEW vista_mi_equipo AS
SELECT matrícula, apellido
FROM compañeros 
WHERE matrícula IN (
    SELECT matrícula FROM compañeros 
    ORDER BY matrícula 
    LIMIT 2
);
