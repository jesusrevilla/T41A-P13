import psycopg2

def test_vista_mi_equipo():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    
    cur.execute("SELECT * FROM vista_mi_equipo;")
    resultados = cur.fetchall()

    assert len(resultados) == 2, f"Se esperaban 2 registros, pero se obtuvieron {len(resultados)}"
    
    matriculas = [fila[0] for fila in resultados]
  
    assert '182239' in matriculas, "Matrícula 182239 no encontrada en el equipo"
    assert '179804' in matriculas, "Matrícula 179804 no encontrada en el equipo"
    
    
    cur.close()
    conn.close()

if __name__ == "__main__":
    test_vista_mi_equipo()
