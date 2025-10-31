CREATE VIEW vista_equipo AS
CREATE OR REPLACE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE apellido IN ('Palau', 'Ibarra', 'García', 'Saucedo');
WHERE matricula IN (178561, 176453, 178666, 178974);
