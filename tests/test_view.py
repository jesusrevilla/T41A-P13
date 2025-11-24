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
    

def test_vista_equipo_yaz():
    conn = psycopg2.connect(
        dbname='test_db',
        user='postgres',
        password='postgres',
        host='localhost',
        port='5432'
    )
    cur = conn.cursor()
    cur.execute("SELECT matricula FROM vista_equipo_rafa;")
    resultados = [fila[0] for fila in cur.fetchall()]
    
    matriculas_esperadas = [
        '179752',
        '177622',
        '182483',
        '182712',
        '183060',
        '179800',
        '181730'
    ]

    assert sorted(resultados) == sorted(matriculas_esperadas), (
        f"Las matrículas en vista_equipo_rafa no coinciden.\n"
        f"Esperado: {sorted(matriculas_esperadas)}\n"
        f"Obtenido: {sorted(resultados)}"
    )

    cur.close()
    conn.close()
