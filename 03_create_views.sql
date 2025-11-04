CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento='TI';

CREATE VIEW vista_equipo_yaz AS
SELECT matricula, apellido FROM lista
WHERE matricula IN (
    '179752',
    '177622',
    '182483',
    '182712',
    '183060',
    '179800',
    '181730'
);
