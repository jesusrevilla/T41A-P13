CREATE OR REPLACE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE matricula IN (178561, 176453, 178666, 178974);
