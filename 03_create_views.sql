-- Crear vista del equipo Cachorritas
CREATE OR REPLACE VIEW vista_cachorritas AS
SELECT matricula, apellido
FROM lista
WHERE equipo = 'Cachorritas';

-- Crear vista TI para los tests
CREATE OR REPLACE VIEW vista_ti AS
SELECT nombre, departamento, salario
FROM empleados
WHERE departamento = 'TI';
