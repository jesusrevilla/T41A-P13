CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE alumnos (
    matricula VARCHAR(20),    
    apellido VARCHAR(100)
);

CREATE TABLE equipo6 (
    matricula VARCHAR(20) PRIMARY KEY,
    apellido VARCHAR(100), 
    numero_equipo NUMERIC
);
