-- Verify tardis_db:initDb on pg

BEGIN;

SELECT EXISTS (
    SELECT 1
    FROM pg_tables
    WHERE schemaname = 'public'
    AND tablename = 'doctor'
) AS "doctor_exists";

SELECT EXISTS (
    SELECT 1
    FROM pg_tables
    WHERE schemaname = 'public'
    AND tablename = 'companion'
) AS "companion_exists";

ROLLBACK;
