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
    cur.execute("SELECT * FROM vista_equipo;")
    resultados = cur.fetchall()
    matriculas = [fila[0] for fila in resultados]
    assert '177622' in matriculas
    assert '178974' in matriculas
    assert '179752' in matriculas
    assert '179800' in matriculas
    assert '181730' in matriculas
    assert '182483' in matriculas
    assert '183060' in matriculas
    cur.close()
    conn.close()
