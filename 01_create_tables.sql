CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE alumnos(
  matricula INTEGER PRIMARY KEY,
  apellido VARCHAR(20)
);
