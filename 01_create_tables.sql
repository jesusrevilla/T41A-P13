CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    salario NUMERIC NOT NULL
);

CREATE TABLE equipos (
    equipo_id SERIAL PRIMARY KEY,
    equipo_nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE companeros (
    matricula VARCHAR(50) PRIMARY KEY,
    apellido VARCHAR(100) NOT NULL,
    equipo_id INTEGER REFERENCES equipos(equipo_id) ON DELETE SET NULL
);

CREATE TABLE staging_lista (
  matricula TEXT,
  apellido TEXT,
  equipo_nombre TEXT
);
