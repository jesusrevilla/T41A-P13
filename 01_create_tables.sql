CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);
CREATE TABLE equipo (
    matricula VARCHAR(6) PRIMARY KEY,
    apellido VARCHAR(100) NOT NULL,
    equi INTEGER 
);

