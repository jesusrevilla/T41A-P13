import psycopg2

# Configuración de la base de datos
DB_CONFIG = {
    "dbname": "test_db",
    "user": "postgres",
    "password": "postgres",
    "host": "localhost",
    "port": 5432
}

def test_vista_cachorritas():
    """
    Verifica que la vista 'vista_cachorritas' contenga únicamente
    las matrículas del equipo Cachorritas.
    """
    conn = psycopg2.connect(**DB_CONFIG)
    cur = conn.cursor()

    cur.execute("SELECT matricula, apellido FROM vista_cachorritas ORDER BY matricula;")
    resultados = cur.fetchall()

    esperado = [177622, 178974, 179752, 179800, 181730, 182483, 183060]
    matrículas_resultado = [fila[0] for fila in resultados]

    assert sorted(matrículas_resultado) == esperado

    # Verificar que los apellidos no estén vacíos
    for fila in resultados:
        assert fila[1] != ""

    cur.close()
    conn.close()


def test_vista_ti():
    """
    Verifica que la vista 'vista_ti' contenga únicamente
    los empleados del departamento TI (Luis y María).
    """
    conn = psycopg2.connect(**DB_CONFIG)
    cur = conn.cursor()

    cur.execute("SELECT nombre, departamento, salario FROM vista_ti;")
    resultados = cur.fetchall()

    # Deben existir exactamente 2 registros
    assert len(resultados) == 2

    nombres = [fila[0] for fila in resultados]
    assert 'Luis' in nombres
    assert 'María' in nombres

    departamentos = [fila[1] for fila in resultados]
    assert all(dep == 'TI' for dep in departamentos)

    cur.close()
    conn.close()
