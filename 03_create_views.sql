
CREATE OR REPLACE VIEW vista_ti AS
SELECT id, nombre, departamento, salario
FROM empleados
WHERE departamento = 'TI';

CREATE OR REPLACE VIEW vista_mi_equipo AS
SELECT c.matricula, c.apellido
FROM companeros c
JOIN equipos e ON c.equipo_id = e.equipo_id
WHERE e.equipo_nombre = 'MiEquipo';

