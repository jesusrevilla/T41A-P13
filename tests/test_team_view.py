import psycopg2

def test_vista_equipo():
    """
    Este test valida la Parte 2 del ejercicio
    """
    conn = psycopg2.connect(
        dbname="test_db",
        user="postgres",
        password="postgres",
        host="localhost",
        port="5432"
    )
    cur = conn.cursor()
    
    # 1. Ejecutar la consulta a la nueva vista
    cur.execute("SELECT matricula, apellido FROM vista_equipo ORDER BY matricula;")
    resultados = cur.fetchall()
    
    # 2. Validar que somos los 2
    assert len(resultados) == 2
    
    # 3. Validar los datos de la primera persona
    assert resultados[0][0] == '177139'  # Matrícula de Moreno
    assert resultados[0][1] == 'Moreno'   # Apellido
    
    # 4. Validar los datos de la segunda persona
    assert resultados[1][0] == '177700'  # Matrícula de De La Rosa
    assert resultados[1][1] == 'De La Rosa' # Apellido
    
    cur.close()
    conn.close()
