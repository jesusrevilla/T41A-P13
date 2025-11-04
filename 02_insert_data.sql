-- Sentencias para el archivo: 02_insert_data.sql

-- 1. Inserción de datos en la tabla empleados (para la prueba de vista_ti)
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);

-- 2. Inserción de datos en la tabla alumnos (para la vista del equipo 'Alfa')
INSERT INTO alumnos (matricula, nombre, apellido, nombre_equipo) VALUES
('A00123456', 'Juan', 'Pérez', 'Alfa'),
('A00789012', 'Sofía', 'García', 'Alfa'),
('A00345678', 'Pedro', 'López', 'Beta');
