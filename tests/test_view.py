import psycopg2

def test_vista_ti():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM vista_ti;")
    resultados = cur.fetchall()
    assert len(resultados) == 2  # Solo Luis y María están en TI
    nombres = [fila[0] for fila in resultados]
    assert 'Luis' in nombres
    assert 'María' in nombres
    cur.close()
    conn.close()

def test_vista_equipo():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM alumnos;")
    resultados = cur.fetchall()
    assert len(resultados) == 6  # Solo Luis y María están en TI
    nombres = [fila[1] for fila in resultados]
    assert 'Quintanilla' in nombres
    assert 'Domínguez' in nombres
    assert 'Gámez' in nombres
    assert 'García' in nombres
    assert 'Martínez' in nombres
    assert 'Ornelas' in nombres
    cur.close()
    conn.close()
