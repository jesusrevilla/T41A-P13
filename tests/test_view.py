import psycopg2

def test_vista_equipo():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
	@@ -9,11 +9,21 @@ def test_vista_ti():
        port='5432'
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM vista_equipo;")
    resultados = cur.fetchall()

    # Extraer columnas
    matriculas = [fila[0] for fila in resultados]
    apellidos = [fila[1] for fila in resultados]

    assert 177406 in matriculas  # Palau

    assert 'Salinas' in apellidos

    assert len(resultados) == 1
