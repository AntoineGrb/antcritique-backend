BEGIN;

INSERT INTO "movie" 
(
  "title", 
  "poster_url", 
  "director", 
  "actors", 
  "genre", 
  "resume", 
  "allocine_link", 
  "senscritique_link", 
  "rate", 
  "critic", 
  "year", 
  "isAllTimeFavorite")
VALUES
(
  'Shutter Island', 
  'https://storage.googleapis.com/bucket_antcritique/Films/movies/Shutter_Island.jpg', 
  'Martin Scorsese', 
  'Leonardo DiCaprio, Mark Ruffalo, Ben Kingsley...', 
  'Thriller', 
  'En 1954, une des patientes de l’hôpital psychiatrique situé sur l’île de Shutter Island, au large de Boston, a disparu sans laisser de traces. Le marshal Teddy Daniels et son coéquipier Chuck Aule, sont envoyés sur place pour mener l’enquête. L’affaire se révèle vite très mystérieuse pour les deux hommes.', 
  'https://www.allocine.fr/film/fichefilm_gen_cfilm=132039.html', 
  'https://www.senscritique.com/film/shutter_island/405140',
  10, 
  'Mon film préféré, tout simplement.', 
  2010, 
  true),
;

COMMIT;