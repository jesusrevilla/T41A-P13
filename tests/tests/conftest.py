# tests/conftest.py
import os
import pathlib
import psycopg2
import pytest

REPO_ROOT = pathlib.Path(__file__).resolve().parents[1]

def _run_sql(cursor, path):
    with open(path, "r", encoding="utf-8") as f:
        sql = f.read()
    cursor.execute(sql)

@pytest.fixture(scope="session")
def db_connection():
    # Permite configurar por variables de entorno si es necesario
    params = dict(
        dbname=os.getenv("PGDATABASE", "test_db"),
        user=os.getenv("PGUSER", "postgres"),
        password=os.getenv("PGPASSWORD", ""),
        host=os.getenv("PGHOST", "localhost"),
        port=int(os.getenv("PGPORT", "5432")),
    )
    conn = psycopg2.connect(**params)
    conn.autocommit = True
    cur = conn.cursor()

    # Ejecuta los scripts en orden
    _run_sql(cur, REPO_ROOT / "01_create_tables.sql")
    _run_sql(cur, REPO_ROOT / "02_insert_data.sql")
    _run_sql(cur, REPO_ROOT / "03_create_views.sql")

    cur.close()
    yield conn
    conn.close()

@pytest.fixture
def cursor(db_connection):
    cur = db_connection.cursor()
    yield cur
    cur.close()
