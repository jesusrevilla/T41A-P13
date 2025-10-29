
CREATE VIEW vista_cachorritas AS
SELECT matricula, apellido
FROM lista
WHERE equipo = 'Cachorritas';

CREATE VIEW vista_ti AS
SELECT nombre, departamento, salario
FROM empleados
WHERE departamento = 'TI';
