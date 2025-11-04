
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE companeros (
    matricula NUMERIC PRIMARY KEY,
    apellido VARCHAR(50) NOT NULL,
    equipo VARCHAR(50) 
);
