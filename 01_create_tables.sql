
CREATE TABLE lista(
  matricula INTEGER PRIMARY KEY NOT NULL,
  apellido VARCHAR(30) NOT NULL
);

CREATE TABLE lista_equipos(
  matricula INTEGER PRIMARY KEY NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  nombre_equipo VARCHAR(25),
  numero_equipo INTEGER
);


