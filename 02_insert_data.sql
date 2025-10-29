-- Cargar datos desde CSV
\copy equipo FROM 'tests/lista.csv' DELIMITER E'\t' CSV HEADER;
