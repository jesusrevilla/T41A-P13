CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento = 'TI';
