import psycopg2
import pytest

# Configuración de la base de datos
DB_CONFIG = {
    "dbname": "test_db",
    "user": "postgres",
    "password": "postgres",
    "host": "localhost",
    "port": 5432
}

@pytest.fixture(scope="module")
def db_connection():
    conn = psycopg2.connect(**DB_CONFIG)
    yield conn
    conn.close()

def test_vista_equipo_yaz(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT matricula FROM vista_equipo_yaz ORDER BY matricula;")
        result = [row[0] for row in cur.fetchall()]

    # ✅ Matrículas esperadas del equipo "equipo_yaz"
    expected = sorted([
        '179752',
        '177622',
        '182483',
        '182712',
        '183060',
        '179800',
        '181730'
    ])

    assert result == expected, (
        f"❌ Las matrículas en vista_equipo_yaz no coinciden.\n"
        f"Esperado: {expected}\n"
        f"Obtenido: {result}"
    )
