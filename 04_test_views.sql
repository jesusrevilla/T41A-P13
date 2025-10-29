import pytest
import psycopg2
import os

def test_vista_ti(db_connection):
    """Test para verificar la vista de empleados de TI"""
    cur = db_connection.cursor()
    
    # Ejecutar consulta a la vista
    cur.execute("SELECT * FROM vista_ti;")
    result = cur.fetchall()
    
    # Verificar que hay 2 empleados en TI
    assert len(result) == 2
    
    # Verificar que los nombres son Luis y María
    nombres = [row[1] for row in result]  # row[1] es la columna 'nombre'
    assert "Luis" in nombres
    assert "María" in nombres
    assert "Ana" not in nombres  # Ana está en Ventas, no en TI
    
    cur.close()

def test_vista_equipo_a(db_connection):
    """Test para verificar la vista del Equipo A"""
    cur = db_connection.cursor()
    
    # Ejecutar consulta a la vista del equipo
    cur.execute("SELECT * FROM mi_equipo;")
    result = cur.fetchall()
    
    # Verificar que hay 14 compañeros en el Equipo A
    assert len(result) == 14
    
    # Verificar que tenemos matrículas y apellidos
    for row in result:
        assert isinstance(row[0], int)  # matricula es entero
        assert isinstance(row[1], str)  # apellido es string
    
    cur.close()

def test_vista_equipo_a_matriculas(db_connection):
    """Test específico para verificar matrículas del Equipo A"""
    cur = db_connection.cursor()
    
    cur.execute("SELECT matricula FROM mi_equipo ORDER BY matricula;")
    matriculas = [row[0] for row in cur.fetchall()]
    
    # Matrículas esperadas del Equipo A
    matriculas_esperadas = [175329, 178920, 177700, 182451, 183016, 179169, 
                          179827, 182570, 174117, 182085, 181662, 177888, 
                          182712, 183060]
    
    # Verificar cantidad
    assert len(matriculas) == len(matriculas_esperadas)
    
    # Verificar que todas las matrículas esperadas están presentes
    for matricula in matriculas_esperadas:
        assert matricula in matriculas
    
    cur.close()
