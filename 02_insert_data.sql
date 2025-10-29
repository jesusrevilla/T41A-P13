INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

INSERT INTO staging_lista (matricula, apellido, equipo_nombre) VALUES
('A001', 'García', 'MiEquipo'),
('A002', 'Pérez', 'MiEquipo'),
('A003', 'López', 'OtroEquipo'),
('A004', 'Hernández', 'MiEquipo');

INSERT INTO equipos (equipo_nombre)
SELECT DISTINCT equipo_nombre
FROM staging_lista
ON CONFLICT (equipo_nombre) DO NOTHING;

INSERT INTO companeros (matricula, apellido, equipo_id)
SELECT s.matricula, s.apellido, e.equipo_id
FROM staging_lista s
JOIN equipos e ON e.equipo_nombre = s.equipo_nombre
ON CONFLICT (matricula) DO NOTHING;

