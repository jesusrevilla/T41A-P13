# 📘 1. ¿Qué es una vista en PostgreSQL?
 Una vista en PostgreSQL es una consulta almacenada que se comporta como una tabla virtual.    
No almacena datos por sí misma, sino que muestra los datos que resultan de una consulta cada vez que se accede a ella.   
Ventajas de usar vistas:   

Simplifican consultas complejas.   
Mejoran la seguridad al restringir el acceso a ciertas columnas o filas.   
Facilitan el mantenimiento del código SQL.    

Sintaxis básica:
```sql
CREATE VIEW nombre_vista AS
SELECT columnas
FROM tabla
WHERE condiciones;
```

## 🧪 2. Ejercicio práctico
Supongamos que tenemos una base de datos de empleados con la siguiente tabla:
```sql
CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC
);
```

Insertamos algunos datos:

```sql
INSERT INTO empleados (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 50000),
('Luis', 'TI', 60000),
('María', 'TI', 65000),
('Carlos', 'Ventas', 55000),
('Elena', 'RRHH', 48000);
```
Creamos una vista `vista_ti` para ver solo empleados del departamento de TI:
