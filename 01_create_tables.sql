CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);
\copy lista FROM 'lista.csv' DELIMITER ',' CSV HEADER;
