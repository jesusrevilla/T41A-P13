CREATE VIEW nombre_vista AS
SELECT columnas
FROM tabla
WHERE condiciones;

CREATE OR REPLACE VIEW vista_cachorritas AS
SELECT matricula, apellido
FROM lista
WHERE equipo = 'Cachorritas';
