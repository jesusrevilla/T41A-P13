
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

    # Verifica que hay 2 empleados en el área de TI
    assert len(resultados) == 2  # Luis y María

    # Extrae los nombres según la posición de la columna 'nombre'
    # Si 'nombre' es la segunda columna, usa fila[1]
    nombres = [fila[1] for fila in resultados]

    assert 'Luis' in nombres
    assert 'María' in nombres

    cur.close()
    conn.close()
