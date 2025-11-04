CREATE VIEW vista_alumnos AS
SELECT Apellido FROM lista 
WHERE Matrícula = '183060' OR Matrícula = '182483' OR Matrícula = '179752';
