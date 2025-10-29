CREATE OR REPLACE VIEW vista_equipo_iti AS
SELECT matricula, nombre, apellido_paterno, apellido_materno
FROM equipo
WHERE grupo = 'ITI';

