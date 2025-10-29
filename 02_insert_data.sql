-- Crear tabla temporal para cargar CSV
CREATE TEMP TABLE lista_temp (
    matricula INT,
    apellido VARCHAR(100)
);

-- Cargar CSV en tabla temporal
\copy lista_temp FROM 'lista.csv' DELIMITER ',' CSV HEADER;

-- Insertar todos los registros en la tabla final, con equipo 'Otros'
INSERT INTO lista (matricula, apellido, equipo)
SELECT matricula, apellido, 'Otros'
FROM lista_temp;

-- Actualizar solo las matrículas de Cachorritas
UPDATE lista
SET equipo = 'Cachorritas'
WHERE matricula IN (179800,181730,179752,183060,182483,178974,177622);

-- Insertar empleados para la vista TI
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Ana', 'Ventas', 50000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);
