CREATE VIEW empleadosVista AS
SELECT *
FROM empleados
WHERE departamento = 'TI';

CREATE VIEW equipoVista AS
SELECT *
FROM equipo
WHERE matricula = '179752' OR matricula = '183213' OR matricula = '183060';
