
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    salario NUMERIC NOT NULL
);

CREATE TABLE companeros (
    matricula VARCHAR(32) PRIMARY KEY,
    apellido_paterno VARCHAR(100) NOT NULL,
    apellido_materno VARCHAR(100),
    nombres VARCHAR(150) NOT NULL,
    equipo VARCHAR(100) NOT NULL
);
