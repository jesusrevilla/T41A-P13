CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE lista (
    matricula VARCHAR(10) PRIMARY KEY,
    apellido VARCHAR(50)
);

