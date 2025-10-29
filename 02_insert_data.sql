\copy lista (matricula, apellido) FROM 'lista.csv' DELIMITER ',' CSV HEADER;

INSERT INTO equipo_cachorritas (matricula)
VALUES 
(179752),
(177622),
(182483),
(179800),
(183060)
ON CONFLICT (matricula) DO NOTHING;
