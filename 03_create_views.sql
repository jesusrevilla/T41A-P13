CREATE VIEW vista_ti AS 
SELECT nombre
FROM empleados
WHERE departamento = 'TI';

SELECT * FROM vista_ti;

CREATE VIEW integrantes AS
SELECT matricula,nombre
FROM equipos
WHERE numero_equipo=5;

SELECT * FROM integrantes;
