UPDATE estudiantes
SET nombre_equipo = 'Consorcio Licenciado Valeriano'
WHERE matricula IN ('177700', '177139');

CREATE VIEW vista_mi_equipo AS
SELECT
    matricula,
    apellido
FROM
    estudiantes
WHERE
    nombre_equipo = 'Consorcio Licenciado Valeriano';
