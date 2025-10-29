-- Crear tabla lista
CREATE TABLE IF NOT EXISTS lista (
    matricula INT PRIMARY KEY,
    apellido VARCHAR(100),
    equipo VARCHAR(50)
);

-- Tabla temporal para importar CSV
CREATE TEMP TABLE lista_temp (
    matricula INT,
    apellido VARCHAR(100)
);

-- Crear tabla empleados
CREATE TABLE IF NOT EXISTS empleados (
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);
