\copy customers FROM 'lista.csv' DELIMITER ',' CSV HEADER;

UPDATE compañeros
SET equipo = '1'
WHERE matricula IN ('182829', '182451', '182934', '179761');  
