CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE alumnos(
  matricula SERIAL PRIMARY KEY,
  apellido TEXT NOT NULL
);

CREATE TABLE equipos(
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL
);

CREATE TABLE integrantes(
  id_equipo INTEGER NOT NULL REFERENCES equipos(id),
  matricula_alumno INTEGER NOT NULL REFERENCES alumnos(matricula),
  PRIMARY KEY (id_equipo, matricula_alumno),
  UNIQUE (matricula_alumno)
);
