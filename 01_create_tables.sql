CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE alumnos (
    matricula PRIMARY KEY,    
    apellido VARCHAR(100)
);

CREATE TABLE equipo6 (
    matricula PRIMARY KEY,
    apellido VARCHAR(100), 
    numero_equipo NUMERIC
);
