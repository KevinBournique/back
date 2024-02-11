-- Deploy tardis_db:initDb to pg

BEGIN;

CREATE TABLE "doctor" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "doctor_number" INT NOT NULL,
    "actor_name" VARCHAR(255) NOT NULL,
    "first_episode_date" DATE NOT NULL,
    "last_episode_date" DATE NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "companion" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "companion_name" VARCHAR(255) NOT NULL,
    "actor_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "author" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "author_name" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "enemy" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "enemy_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "episode" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "series_number" INT NOT NULL,
    "episode_number" INT NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "episode_date" DATE NOT NULL,
    "author_id" INT NOT NULL REFERENCES "author"("id"),
    "doctor_id" INT NOT NULL REFERENCES "doctor"("id"),
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "episode_companion" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "episode_id" INT NOT NULL REFERENCES "episode"("id"),
    "companion_id" INT NOT NULL REFERENCES "companion"("id"),
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "episode_enemy" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "episode_id" INT NOT NULL REFERENCES "episode"("id"),
    "enemy_id" INT NOT NULL REFERENCES "enemy"("id"),
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);  

CREATE TABLE "episode_doctor" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "episode_id" INT NOT NULL REFERENCES "episode"("id"),
    "doctor_id" INT NOT NULL REFERENCES "doctor"("id"),
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "episode_author" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "episode_id" INT NOT NULL REFERENCES "episode"("id"),
    "author_id" INT NOT NULL REFERENCES "author"("id"),
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMP NOT NULL DEFAULT NOW()
);


COMMIT;
