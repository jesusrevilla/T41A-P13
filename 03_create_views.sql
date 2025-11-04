CREATE OR REPLACE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE matricula IN (177406);
