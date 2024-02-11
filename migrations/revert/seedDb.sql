-- Revert tardis_db:seedDb from pg

BEGIN;

DELETE FROM "doctor";

COMMIT;
