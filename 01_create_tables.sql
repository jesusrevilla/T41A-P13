CREATE TABLE IF NOT EXISTS empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

CREATE TABLE IF NOT EXISTS lista (
    matricula INT PRIMARY KEY,
    apellido VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS equipo_cachorritas (
    matricula INT PRIMARY KEY,
    equipo VARCHAR(50) DEFAULT 'cachorritas'
);
