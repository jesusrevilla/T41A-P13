import psycopg2

def test_vista_equipo():
    conn = psycopg2.connect(
        dbname="test_db",
        user="postgres",
        password="postgres",
        host="localhost",
        port="5432"
    )
    cur = conn.cursor()
    cur.execute("SELECT * FROM vista_equipo;")
    rows = cur.fetchall()

    matriculas = [row[0] for row in rows]
    assert "181662" in matriculas, "Tu matrícula no aparece en la vista_equipo"

    cur.close()
    conn.close()
