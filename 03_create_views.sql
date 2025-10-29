CREATE VIEW vista_ti AS SELECT id, nombre, departamento, salario
FROM empleados WHERE departamento = 'TI';
