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
def test_integrante_equipo():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM integrante_equipo ;")
    result = cur.fetchall()
    assert len(result) == 4 # 4 miembros
    apellidos = [fila[0] for fila in result]
    assert 'Domínguez' in apellidos
    assert 'Gámez' in apellidos
    assert 'García' in apellidos
    assert 'Martínez' in apellidos
    cur.close()
    conn.close()
