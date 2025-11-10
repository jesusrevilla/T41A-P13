
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
    assert len(resultados) == 2  # Luis y María
    nombres = [fila[1] for fila in resultados]  # Ajusta el índice si 'nombre' está en otra posición
    assert 'Luis' in nombres
    assert 'María' in nombres
    cur.close()
    conn.close()
