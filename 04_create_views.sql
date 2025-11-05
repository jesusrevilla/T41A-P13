CREATE VIEW vista_alumnos AS
SELECT apellido FROM lista 
WHERE matricula = '183060' OR matricula = '182483' OR matricula = '179752';
