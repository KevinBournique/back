-- Revert tardis_db:onDeleteCascade from pg

BEGIN;

ALTER TABLE "episode" 
DROP CONSTRAINT "episode_author_id_fkey",
ADD CONSTRAINT "episode_author_id_fkey" 
FOREIGN KEY ("author_id") 
REFERENCES "author"("id") 
ON DELETE CASCADE;

ALTER TABLE "episode"
DROP CONSTRAINT "episode_doctor_id_fkey",
ADD CONSTRAINT "episode_doctor_id_fkey"
FOREIGN KEY ("doctor_id")
REFERENCES "doctor"("id")
ON DELETE CASCADE;

ALTER TABLE "episode_companion"
DROP CONSTRAINT "episode_companion_episode_id_fkey",
ADD CONSTRAINT "episode_companion_episode_id_fkey"
FOREIGN KEY ("episode_id")
REFERENCES "episode"("id")
ON DELETE CASCADE;

ALTER TABLE "episode_companion"
DROP CONSTRAINT "episode_companion_companion_id_fkey",
ADD CONSTRAINT "episode_companion_companion_id_fkey"
FOREIGN KEY ("companion_id")
REFERENCES "companion"("id")
ON DELETE CASCADE;

ALTER TABLE "episode_enemy"
DROP CONSTRAINT "episode_enemy_episode_id_fkey",
ADD CONSTRAINT "episode_enemy_episode_id_fkey"
FOREIGN KEY ("episode_id")
REFERENCES "episode"("id")
ON DELETE CASCADE;

ALTER TABLE "episode_enemy"
DROP CONSTRAINT "episode_enemy_enemy_id_fkey",
ADD CONSTRAINT "episode_enemy_enemy_id_fkey"
FOREIGN KEY ("enemy_id")
REFERENCES "enemy"("id")
ON DELETE CASCADE;

COMMIT;