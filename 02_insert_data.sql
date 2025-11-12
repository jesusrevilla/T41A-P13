
\copy lista_temp FROM 'lista.csv' DELIMITER ',' CSV HEADER;

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

INSERT INTO empleados (nombre, departamento, salario) VALUES
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Ana', 'Ventas', 50000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);
