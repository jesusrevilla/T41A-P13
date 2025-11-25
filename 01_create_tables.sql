CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE equipo (
  matricula INT PRIMARY KEY,
  apellido TEXT NOT NULL
);
