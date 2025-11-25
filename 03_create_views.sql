CREATE VIEW vista_ti AS
SELECT nombre, departamento
FROM empleados
WHERE departamento = 'TI';

CREATE VIEW equipoVista AS
SELECT *
FROM equipo
WHERE matricula = '177888' OR matricula = '183213' OR matricula = '183060';
