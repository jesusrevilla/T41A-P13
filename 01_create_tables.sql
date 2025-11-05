
DO $$
BEGIN
   EXECUTE 'DROP SCHEMA public CASCADE';
   EXECUTE 'CREATE SCHEMA public';
   EXECUTE 'GRANT ALL ON SCHEMA public TO public';
END $$;

-- 1) Tabla principal del ejercicio
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    salario NUMERIC NOT NULL
);

-- 2) Tablas para la parte del equipo
CREATE TABLE companeros (
    matricula VARCHAR(32) PRIMARY KEY,
    apellido_paterno VARCHAR(100) NOT NULL,
    apellido_materno VARCHAR(100),
    nombres VARCHAR(150) NOT NULL,
    equipo VARCHAR(100) NOT NULL
);
