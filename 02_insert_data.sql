\copy customers FROM 'lista.csv' DELIMITER ',' CSV HEADER;

UPDATE compañeros
SET equipo = '1'
WHERE matricula IN ('182829', '179752', '178920');  -- ejemplo
