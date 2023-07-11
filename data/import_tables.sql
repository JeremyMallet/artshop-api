BEGIN;

DROP TABLE IF EXISTS "work_of_art",
"artist";


CREATE TABLE IF NOT EXISTS "work_of_art" (
  "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "artist_id" integer NOT NULL REFERENCES "artist" ("id"),
  "title" text NOT NULL,
  "price" float NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamptz
);


CREATE TABLE IF NOT EXISTS "artist" (
  "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "firstname" integer NOT NULL REFERENCES "artist" ("id"),
  "lastname" text NOT NULL,
  "email" text NOT NULL,
  "password" text NOT NULL,
  "url" url NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamptz
);

ALTER TABLE "work_of_art"
  ADD FOREIGN KEY ("artist_id") REFERENCES "artist" ("id");

COMMIT;