CREATE OR REPLACE VIEW vista_ti AS
SELECT id, nombre, departamento, salario
FROM empleados
WHERE departamento = 'TI';


CREATE OR REPLACE VIEW vista_equipo AS
SELECT
    matricula,
    TRIM(nombres || ' ' || apellido_paterno || COALESCE(' ' || apellido_materno, '')) AS nombre_completo
FROM companeros
WHERE equipo = 'Equipo-JECEJ';
