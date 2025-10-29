\encoding UTF8


\copy companeros (matricula, apellido)
FROM 'lista.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL '', ENCODING 'UTF8');
