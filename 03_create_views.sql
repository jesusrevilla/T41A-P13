-- Vista para empleados del departamento de TI
CREATE VIEW vista_ti AS
SELECT id, nombre, salario
FROM empleados
WHERE departamento = 'TI';

-- Vista PRINCIPAL para tus compañeros del Equipo A
CREATE VIEW mi_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE equipo = 'Equipo A'
ORDER BY apellido;
