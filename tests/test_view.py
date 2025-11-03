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

def test_vista_equipo6():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    cur.execute("SELECT matricula, apellido FROM vista_equipo6;")
    resultados = cur.fetchall()
    assert len(resultados) == 6
    matriculas = [fila[0] for fila in resultados]
    
    assert '178920' in matriculas
    assert '183016' in matriculas
    assert '182570' in matriculas
    assert '178584' in matriculas
    assert '177888' in matriculas  
    assert '175329' in matriculas

    cur.close()
    conn.close()


