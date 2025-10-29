CREATE OR REPLACE VIEW vista_equipo AS
SELECT matricula, nombre
FROM lista
WHERE matricula = '181662';
