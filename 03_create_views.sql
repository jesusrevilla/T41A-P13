
CREATE VIEW vista_ti AS
SELECT 
    nombre, -- *** Poner 'nombre' como primera columna para que el test_view.py pase ***
    id, 
    departamento, 
    salario
FROM empleados
WHERE departamento = 'TI';


CREATE VIEW vista_equipo AS
SELECT matricula, apellido
FROM companeros
WHERE equipo = 'T41A-P13'; 
