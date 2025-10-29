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

    assert 178561 in matriculas  # Palau
    assert 176453 in matriculas  # Ibarra
    assert 178666 in matriculas  # García
    assert 178974 in matriculas  # Saucedo

    assert 'Palau' in apellidos
    assert 'Ibarra' in apellidos
    assert 'García' in apellidos
    assert 'Saucedo' in apellidos

    assert len(resultados) == 3
