BEGIN;

DROP TABLE IF EXISTS "cover", "movie";

-- Create the 'cover' table
CREATE TABLE "cover" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    url TEXT NOT NULL
);

-- Create the 'movie' table
CREATE TABLE "movie" (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(255) NOT NULL,
    "poster_url" TEXT,
    "director" VARCHAR(255) NOT NULL,
    "actors" TEXT,
    "genre" VARCHAR(255),
    "resume" TEXT,
    "allocine_link" TEXT,
    "senscritique_link" TEXT,
    "rate" INTEGER,
    "critic" TEXT,
    "year" INTEGER,
    "isAllTimeFavorite" BOOLEAN DEFAULT false,
    "rank" INTEGER
);

COMMIT;
