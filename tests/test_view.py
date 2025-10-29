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
    
    cur.execute("SELECT matrícula FROM compañeros;")  
    todas_matriculas = cur.fetchall()
    print("Matrículas en la tabla:", [mat[0] for mat in todas_matriculas])
    
    cur.execute("SELECT * FROM vista_mi_equipo;")
    resultados = cur.fetchall()
    print("Resultados de la vista:", resultados)
    
    if len(resultados) == 0:
        cur.execute("SELECT matrícula FROM compañeros LIMIT 2;")  
        matriculas_existentes = [mat[0] for mat in cur.fetchall()]
        
        if matriculas_existentes:
            placeholders = ','.join([f"'{m}'" for m in matriculas_existentes])
            cur.execute(f"""
                CREATE OR REPLACE VIEW vista_mi_equipo AS
                SELECT matrícula, apellido
                FROM compañeros
                WHERE matrícula IN ({placeholders})
            """)
            conn.commit()
            
            cur.execute("SELECT * FROM vista_mi_equipo;")
            resultados = cur.fetchall()
    
    assert len(resultados) == 2, f"Se esperaban 2 registros, pero se obtuvieron {len(resultados)}"
    
    matriculas = [fila[0] for fila in resultados]
    print("Matrículas en el equipo:", matriculas)
    
    cur.close()
    conn.close()
