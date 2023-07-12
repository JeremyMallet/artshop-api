BEGIN;

DROP TABLE IF EXISTS "work_of_art";
DROP TABLE IF EXISTS "artist";

CREATE TABLE IF NOT EXISTS "artist" (
  "id" SERIAL PRIMARY KEY,
  "firstname" text NOT NULL,
  "lastname" text NOT NULL,
  "email" text NOT NULL,
  "password" text NOT NULL,
  "url" text NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamptz
);

CREATE TABLE IF NOT EXISTS "work_of_art" (
  "id" SERIAL PRIMARY KEY,
  "artist_id" integer NOT NULL,
  "title" text NOT NULL,
  "price" float NOT NULL,
  "url" text NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamptz,
  FOREIGN KEY ("artist_id") REFERENCES "artist" ("id")
);

COMMIT;
