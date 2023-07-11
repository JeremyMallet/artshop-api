BEGIN;


INSERT INTO "work_of_art" ("id", "artist_id", "title", "price", "url") VALUES
(1, 1, 'shiny colors', '120', 'https://www.istockphoto.com/fr/photo/abstrait-peint-%C3%A0-la-main-fond-dart-sur-toile-gm1134512518-301497725?phrase=painting',),
(2, 1, 'Iris killer', '150', 'https://www.istockphoto.com/fr/photo/r%C3%A9sum%C3%A9-peint-larri%C3%A8re-plan-art-gm1124507971-295233240?phrase=painting',),
(3, 2, 'Clouds', '200', 'https://www.istockphoto.com/fr/photo/ciel-bleu-avec-des-nuages-blancs-dans-le-style-r%C3%A9tro-grunge-contexte-de-la-nature-gm1044276446-279509994?phrase=painting', ),
(4, 2, 'lac', '180', 'https://www.istockphoto.com/fr/photo/peintures-waterlily-gm1295248130-389026172?phrase=painting', );

INSERT INTO "artist" ("id", "firstname", "lastname", "email", "password", "url") VALUES
(1, 'Jeanne','Calmant', 'jeannecalmant@gmail.com', '$2b$10$7vwYGrz2TGeyG4X8YnD9BOag9I.YKGUTJELs64qGmcK/syHu2BzTG', 'https://www.istockphoto.com/fr/photo/artiste-f%C3%A9minine-talentueuse-travaille-sur-la-peinture-%C3%A0-lhuile-abstraite-%C3%A0-laide-de-gm1183183791-332572233?phrase=artiste' ),
(1, 'Bobby', 'Lapointe', 'boblapointe@gmail.com', '$2b$10$7vwYGrz2TGeyG4X8YnD9BOag9I.YKGUTJELs64qGmcK/syHu2BzTG', 'https://www.istockphoto.com/fr/photo/homme-noir-occup%C3%A9-%C3%A0-dessiner-des-lignes-sur-une-grande-toile-avec-de-la-peinture-sur-gm1358545569-432131366?phrase=artiste',);

ALTER TABLE "work_of_art"
  ADD FOREIGN KEY ("artist_id") REFERENCES "artist" ("id");

COMMIT;

BEGIN;

SELECT setval('artist_id_seq', (SELECT MAX(id) from "artist"));
SELECT setval('work_of_art_id_seq', (SELECT MAX(id) from "work_of_art"));

COMMIT;