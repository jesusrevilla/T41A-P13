import psycopg2

def test_vista_equipo():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM vista_equipo;")
    resultados = cur.fetchall()

    # Extraer columnas
    matriculas = [fila[0] for fila in resultados]
    apellidos = [fila[1] for fila in resultados]

    # Verificar que los tres compañeros del equipo están en la vista
    assert 178561 in matriculas  # Palau
    assert 176453 in matriculas  # Palau
    assert 178666 in matriculas  # García
    assert 178974 in matriculas  # Saucedo

    assert 'Palau' in apellidos
    assert 'Ibarra' in apellidos
    assert 'García' in apellidos
    assert 'Saucedo' in apellidos

    # Verificar que solo hay tres registros
    assert len(resultados) == 4

    cur.close()
    conn.close()
