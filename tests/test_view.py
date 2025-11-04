import psycopg2
def test_vista_ti():
    # Asegúrate de que los parámetros de conexión coincidan con tu base de datos
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    # Sintaxis de la consulta corregida
    cur.execute('SELECT * FROM vista_ti;')
    
    resultados = cur.fetchall()
    
    assert len(resultados) == 2  
   
    nombres = [fila[0] for fila in resultados]
    assert 'Luis' in nombres
    assert 'María' in nombres
    
    cur.close()
    conn.close()


def test_vista_equipo():
    
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    # Sintaxis de la consulta corregida
    cur.execute('SELECT * FROM vista_equipo;')
    
    resultados = cur.fetchall()
    
    # Extraer columnas (asumiendo que matricula es el índice 0 y apellido es el índice 1)
    matriculas = [fila[0] for fila in resultados]
    apellidos = [fila[1] for fila in resultados]
    
    # Matrículas de tu equipo (4 integrantes)
    assert 178561 in matriculas  # Palau
    assert 176453 in matriculas  # Ibarra
    assert 178666 in matriculas  # García
    assert 178974 in matriculas  # Saucedo
    
    # Apellidos de tu equipo
    assert 'Palau' in apellidos
    assert 'Ibarra' in apellidos
    assert 'García' in apellidos
    assert 'Saucedo' in apellidos

    assert len(resultados) == 4
    
    cur.close()
    conn.close()
