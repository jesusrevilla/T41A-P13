-- Crear vista para mostrar solo los compañeros de tu equipo
CREATE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE apellido IN ('Palau', 'Ibarra', 'García', 'Saucedo');
