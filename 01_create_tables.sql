CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE equipos(
  id_equipo INT PRIMARY KEY,
  nombre_equipo VARCHAR(100) NOT NULL
);

CREATE TABLE alumnos(
  matricula VARCHAR(6) PRIMARY KEY,
  apellido VARCHAR(100) NOT NULL,
  nombre VARCHAR(100) null,
  equipo INT REFERENCES equipos(id_equipo) null
);
