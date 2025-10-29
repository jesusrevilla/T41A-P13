CREATE OR REPLACE VIEW vista_cachorritas AS
SELECT 
    e.matricula,
    l.apellido,
    e.equipo
FROM equipo_cachorritas e
LEFT JOIN lista l ON e.matricula = l.matricula;
