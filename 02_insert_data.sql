\encoding UTF8
\copy public.companeros (matricula, apellido)
FROM 'lista.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL '');
