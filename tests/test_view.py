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
    assert len(resultados) == 2  
    
    nombres = [fila[0] for fila in resultados]
    assert 'Luis' in nombres
    assert 'María' in nombres
    cur.close()
    conn.close()

def test_vista_mi_equipo():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    
    cur.execute("""
        SELECT EXISTS (
            SELECT FROM information_schema.views 
            WHERE table_name = 'alumnos'
        );
    """)
    vista_existe = cur.fetchone()[0]
    
    if not vista_existe:
        # Crear la vista si no existe
        cur.execute("""
            CREATE OR REPLACE VIEW vista_mi_equipo AS
            SELECT matrícula, apellido
            FROM alumnos 
            WHERE matrícula IN ('182239', '179804');
        """)
        conn.commit()
    
    cur.execute("SELECT * FROM vista_mi_equipo;")
    resultados = cur.fetchall()
    
    assert len(resultados) == 2, f"Se esperaban 2 registros, pero se obtuvieron {len(resultados)}"
    
    matriculas = [fila[0] for fila in resultados]
    print("Matrículas en el equipo:", matriculas)
    
    assert '182239' in matriculas
    assert '179804' in matriculas
    
    cur.close()
    conn.close()
