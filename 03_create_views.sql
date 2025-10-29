-- 1. Vista para el test existente
CREATE VIEW vista_ti AS
SELECT nombre
FROM empleados
WHERE departamento = 'TI';


-- 2. Vista para vista de equipo
CREATE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE matricula IN ('177139', '177700'); -- Filtro para los licenciados valeriano y siberiano
