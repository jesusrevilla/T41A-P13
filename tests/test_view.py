# tests/test_view.py
import psycopg2
import pytest

def test_vista_ti():
    conn = psycopg2.connect(
        dbname="postgres",
        user="postgres",
        password="postgres",
        host="localhost"
    )
    cur = conn.cursor()
    cur.execute("SELECT nombre FROM vista_ti;")
    results = [row[0] for row in cur.fetchall()]
    
    assert "Luis" in results
    assert "María" in results
    assert "Ana" not in results

    conn.close()


def test_vista_equipo_iti():
    conn = psycopg2.connect(
        dbname="postgres",
        user="postgres",
        password="postgres",
        host="localhost"
    )
    cur = conn.cursor()
    cur.execute("SELECT matricula FROM vista_equipo_iti;")
    results = [row[0] for row in cur.fetchall()]
    
    esperadas = ["179827", "179169", "177622", "179859"]
    for matricula in esperadas:
        assert matricula in results

    conn.close()

