-- Sentencias para el archivo: 01_create_tables.sql

-- 1. Tabla de Empleados (del ejercicio práctico)
DROP TABLE IF EXISTS empleados CASCADE;
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);

-- 2. Tabla de Alumnos/Equipo (del ejercicio 3)
-- Esta tabla simula la carga de datos del archivo lista.csv
DROP TABLE IF EXISTS alumnos CASCADE;
CREATE TABLE alumnos (
    matricula VARCHAR(10) PRIMARY KEY, -- Matrícula como identificador único
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    nombre_equipo VARCHAR(50)
);
