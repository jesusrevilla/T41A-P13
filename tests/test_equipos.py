
import psycopg2
import pytest

def test_vista_integrantes_equipo_5():
    """
    Esta prueba valida que la vista 'integrantes' contenga
    exactamente las matrículas de los miembros del equipo 5.
    """
    conn = None
    try:
        conn = psycopg2.connect(
            dbname='test_db',
            user='postgres',
            password='postgres',
            host='localhost',
            port='5432'
        )
        cur = conn.cursor()
        matriculas_esperadas = {176453, 171513, 178218}
        
        cur.execute("SELECT matricula FROM integrantes;")
        resultados = cur.fetchall()
        
        assert len(resultados) == 3
        matriculas_obtenidas = {fila[0] for fila in resultados}
        
        assert matriculas_obtenidas == matriculas_esperadas
        
    finally:
        if conn:
            cur.close()
            conn.close()
