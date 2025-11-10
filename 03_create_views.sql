
-- Vista para empleados de TI
CREATE VIEW vista_ti AS
SELECT * FROM empleados
WHERE departamento = 'TI';

-- Vista para compañeros de tu equipo
CREATE VIEW vista_equipo AS
SELECT matricula, apellido
FROM compañeros
WHERE equipo = 'RadarRide';  -- Cambia el nombre si tu equipo se llama diferente
