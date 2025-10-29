# tests/test_view.py
import psycopg2
import pytest

def ejecutar_sql(cur, archivo):
    """Ejecuta un script SQL."""
    with open(archivo, "r", encoding="utf-8") as f:
        sql = f.read()
        cur.execute(sql)


def setup_database(cur):
    """Ejecuta los scripts necesarios para crear la tabla, insertar datos y crear la vista."""
    ejecutar_sql(cur, "01_create_tables.sql")
    ejecutar_sql(cur, "02_insert_data.sql")
    ejecutar_sql(cur, "03_create_views.sql")


def test_vista_equipo_iti():
    """Valida que la vista vista_equipo_iti contenga las matrículas correctas."""
    conn = psycopg2.connect(
        dbname="postgres",
        user="postgres",
        password="postgres",
        host="localhost"
    )
    cur = conn.cursor()

    # Inicializa la base de datos
    setup_database(cur)
    conn.commit()

    # Ejecuta la prueba
    cur.execute("SELECT matricula FROM vista_equipo_iti;")
    results = [row[0] for row in cur.fetchall()]

    esperadas = ["179827", "179169", "177622", "179859"]
    for matricula in esperadas:
        assert matricula in results, f"La matrícula {matricula} no se encontró en la vista."

    conn.close()


