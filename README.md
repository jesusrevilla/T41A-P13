# PostgreSQL Views with Unit Testing

Este proyecto demuestra cómo crear y probar una vista en PostgreSQL utilizando Python y GitHub Actions.

## 🧱 Estructura

- `vista_ti.sql`: Script para crear la tabla, insertar datos y crear la vista.
- `test_vista_ti.py`: Pruebas unitarias con `pytest`.
- `.github/workflows/python-tests.yml`: Configuración de CI con GitHub Actions.

## 🚀 Requisitos

- PostgreSQL
- Python 3.10+
- `psycopg2`
- `pytest`

## 🧪 Ejecutar pruebas

```bash
pytest test_vista_ti.py
``
