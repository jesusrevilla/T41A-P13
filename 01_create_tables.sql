
-- Tabla empleados
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

-- Tabla compañeros
CREATE TABLE compañeros (
    matricula VARCHAR(10),
    apellido VARCHAR(100),
    equipo VARCHAR(50)
);

