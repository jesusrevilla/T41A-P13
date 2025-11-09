CREATE VIEW vista_ti AS
SELECT nombre,departamento
FROM empleados
WHERE departamento='TI';


CREATE VIEW equipoVista AS
SELECT *
FROM lista
WHERE matricula=182483 OR matricula=179752 OR matricula=183060
OR matricula=181730 OR matricula= 183213 OR matricula=182712
OR matricula=179800;
