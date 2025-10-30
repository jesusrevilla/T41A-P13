CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE alumnos(
  matricula INT PRIMARY KEY,
  apellido VARCHAR(50) NOT NULL
);

CREATE TABLE equipos(
  id_equipo INT PRIMARY KEY,
  nombre_equipo VARCHAR(100) NOT NULL
);

CREATE TABLE alumno_equipo(
    matricula INT references alumnos(matricula),
    equipo INT references equipos(id_equipo)
);
