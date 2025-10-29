-- Crear tabla empleados
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

-- Crear tabla compañeros
CREATE TABLE companeros (
    matricula INTEGER PRIMARY KEY,
    apellido VARCHAR(100),
    equipo VARCHAR(50)
);
