-- Sentencias para el archivo: 03_create_views.sql

-- 1. Vista del Ejercicio 2: vista_ti
-- Muestra solo empleados del departamento de 'TI'.
DROP VIEW IF EXISTS vista_ti;
CREATE VIEW vista_ti AS
SELECT
    -- Seleccionamos 'nombre' primero para la prueba unitaria de Python
    nombre,
    id,
    departamento,
    salario
FROM
    empleados
WHERE
    departamento = 'TI';

-- 2. Vista del Ejercicio 3: vista_equipo_alfa
-- Muestra matrícula y nombre completo de los compañeros del equipo 'Alfa'.
DROP VIEW IF EXISTS vista_equipo_alfa;
CREATE VIEW vista_equipo_alfa AS
SELECT
    matricula,
    nombre || ' ' || apellido AS nombre_completo
FROM
    alumnos
WHERE
    nombre_equipo = 'Alfa';
