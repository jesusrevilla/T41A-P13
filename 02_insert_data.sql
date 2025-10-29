-- Cargar datos desde CSV a tabla temporal
\copy lista_temp FROM 'lista.csv' DELIMITER ',' CSV HEADER;

-- Insertar datos en tabla final lista asignando equipo
INSERT INTO lista (matricula, apellido, equipo)
SELECT 
    matricula,
    apellido,
    CASE 
        WHEN matricula IN (179800,181730,179752,183060,182483,178974,177622)
        THEN 'Cachorritas'
        ELSE 'Otros'
    END AS equipo
FROM lista_temp;

-- Insertar datos de empleados para la vista TI
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Ana', 'Ventas', 50000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);
