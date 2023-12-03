-- Revert tardis_db:initDb from pg

BEGIN;

DROP TABLE "doctor", "companion";

COMMIT;
