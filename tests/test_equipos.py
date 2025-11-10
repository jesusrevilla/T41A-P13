
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
    assert len(resultados) >= 1  # Asegúrate de tener al menos un compañero en tu equipo
    cur.close()
    conn.close()
