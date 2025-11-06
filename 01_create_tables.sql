
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE equipos(
  matricula INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  numero_equipo INTEGER
);
