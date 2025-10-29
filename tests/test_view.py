import psycopg2

def test_vista_mi_equipo():
    
    conn = psycopg2.connect(
        dbname='test_db',
        user='runner',
        password='password',
        host='localhost',
        port='5432'
    )
    
    cur = conn.cursor()
    cur.execute("SELECT matricula FROM vista_mi_equipo;")
    resultados = cur.fetchall()
    assert len(resultados) == 2
    matriculas = [fila[0] for fila in resultados]
    assert '177700' in matriculas
    assert '177139' in matriculas
    cur.close()
    conn.close()
