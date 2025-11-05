# tests/test_views.py
import pathlib
import pytest

def fetchall(cursor, q, *args):
    cursor.execute(q, args)
    return cursor.fetchall()

def test_vista_ti_existe(cursor):
    # Vista debe existir
    rows = fetchall(cursor, """
        SELECT 1 FROM information_schema.views
        WHERE table_schema='public' AND table_name='vista_ti'
    """)
    assert rows, "La vista 'vista_ti' no existe"

def test_vista_ti_contenido(cursor):
    # Según los inserts del README:
    # Ana (Ventas), Luis (TI), María (TI), Carlos (Ventas), Elena (RRHH)
    rows = fetchall(cursor, "SELECT nombre FROM vista_ti ORDER BY nombre")
    nombres = [r[0] for r in rows]
    assert nombres == ["Luis", "María"], f"Contenido inesperado en vista_ti: {nombres}"

def test_vista_equipo_existe(cursor):
    rows = fetchall(cursor, """
        SELECT 1 FROM information_schema.views
        WHERE table_schema='public' AND table_name='vista_equipo'
    """)
    assert rows, "La vista 'vista_equipo' no existe"

def test_vista_equipo_matriculas(cursor):
   
    esperadas = {"182570", "183016", "178584", "177888", "175329"}
    rows = fetchall(cursor, "SELECT matricula FROM vista_equipo")
    obtenidas = {r[0] for r in rows}
    faltantes = esperadas - obtenidas
    extras = obtenidas - esperadas
    assert not faltantes and not extras, (
        f"Las matrículas del equipo no coinciden.\n"
        f"Faltan: {sorted(faltantes)}\n"
        f"Extras: {sorted(extras)}\n"
        f"Obtenidas: {sorted(obtenidas)}"
    )
