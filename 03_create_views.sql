CREATE VIEW vista_ti AS
SELECT nombre, departamento, salario
FROM empleados
WHERE departamento = 'TI';

