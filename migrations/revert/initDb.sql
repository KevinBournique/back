-- Revert tardis_db:initDb from pg

BEGIN;

DROP TABLE "doctor", "companion", "author", "enemy", "episode", "episode_companion", "episode_enemy", "episode_doctor", "episode_author";

COMMIT;
