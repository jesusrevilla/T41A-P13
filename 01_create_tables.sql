CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);
CREATE TABLE equipo (
    Matrícula VARCHAR(6) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    team INTEGER 
);

