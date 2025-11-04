import psycopg2
import pytest

def test_vista_equipo():
    try:
        conn = psycopg2.connect(
            dbname='test_db',
            user='postgres',
            password='postgres',
            host='localhost',
            port='5432'
        )
        cur = conn.cursor()
        
        # Crear o reemplazar la vista
        cur.execute("""
            CREATE OR REPLACE VIEW vista_equipo AS
            SELECT 
                matricula,
                apellidos
            FROM alumnos 
            WHERE matricula IN (178561, 176453, 178666, 178974);
        """)
        conn.commit()
        
        # Ejecutar la consulta
        cur.execute("SELECT * FROM vista_equipo ORDER BY matricula;")
        resultados = cur.fetchall()
        
        print("Resultados obtenidos:", resultados)  # Para debugging
        
        # Extraer columnas
        matriculas = [fila[0] for fila in resultados]
        apellidos = [fila[1] for fila in resultados]
        
        # Verificaciones
        assert len(resultados) == 4, f"Expected 4 records, got {len(resultados)}"
        
        for matricula in [178561, 176453, 178666, 178974]:
            assert matricula in matriculas, f"Matricula {matricula} not found in view"
        
        cur.close()
        conn.close()
        
    except psycopg2.Error as e:
        pytest.fail(f"Database error: {e}")
    except Exception as e:
        pytest.fail(f"Test error: {e}")
