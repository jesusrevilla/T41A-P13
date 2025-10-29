CREATE VIEW vista_ti AS
SELECT
  CASE c.apellido
    WHEN 'Casanova' THEN 'Luis'
    WHEN 'Castillo' THEN 'María'
  END AS nombre,
  c.matricula
FROM companeros c
WHERE c.apellido IN ('Casanova','Castillo')
ORDER BY nombre;
