CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);
CREATE TABLE lista(
  apellido TEXT NOT NULL,
  matricula INT PRIMARY KEY
);
\copy lista FROM 'lista.csv' DELIMITER ',' CSV HEADER;
