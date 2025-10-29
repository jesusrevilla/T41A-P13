CREATE VIEW vista_ti AS
SELECT nombre,departamento
FROM empleados
WHERE departamento='TI';


CREATE VIEW cachorritas AS
SELECT matricula, apellido
FROM lista
WHERE matricula==182483||matricula==179752||matricula==183060
||matricula==181730||matricula==183213||matricula==182712
||matricula==179800;
