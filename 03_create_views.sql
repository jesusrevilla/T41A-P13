CREATE VIEW vista_equipo_alfa AS
SELECT
    matricula,
    nombre || ' ' || apellido AS nombre_completo
FROM
    alumnos
WHERE
    nombre_equipo = 'Alfa';
