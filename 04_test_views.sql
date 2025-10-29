-- Prueba unitaria mínima - solo verifica cantidad de matrículas
DO $$
DECLARE
    actual_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO actual_count FROM mi_equipo;
    
    IF actual_count = 14 THEN
        RAISE NOTICE '✅ PRUEBA EXITOSA: Equipo A tiene 14 matrículas';
    ELSE
        RAISE EXCEPTION 'ERROR: Equipo A debería tener 14 matrículas, pero tiene %', actual_count;
    END IF;
END $$;
