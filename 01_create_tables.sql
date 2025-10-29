CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);


CREATE TABLE compañeros (
    matrícula VARCHAR(20) PRIMARY KEY,
    apellido VARCHAR(100)
);
