CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE lista(
    matricula INT PRIMARY KEY,
    apellido VARCHAR(10),
    grupo VARCHAR(10)
);
