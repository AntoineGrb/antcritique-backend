BEGIN;

DROP TABLE IF EXISTS "cover", "movie", "tv_show", "book", "video_game";

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

-- Create the 'tvshow' table
CREATE TABLE "tv_show" (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(255) NOT NULL,
    "poster_url" TEXT,
    "creator" VARCHAR(255) NOT NULL,
    "actors" TEXT,
    "genre" VARCHAR(255),
    "resume" TEXT,
    "allocine_link" TEXT,
    "senscritique_link" TEXT,
    "rate" INTEGER,
    "critic" TEXT,
    "rank" INTEGER
);

-- Create the 'book' table
CREATE TABLE "book" (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(255) NOT NULL,
    "cover_url" TEXT,
    "author" VARCHAR(255) NOT NULL,
    "genre" VARCHAR(255),
    "resume" TEXT,
    "babelio_link" TEXT,
    "senscritique_link" TEXT,
    "rate" INTEGER,
    "critic" TEXT,
    "rank" INTEGER
);

-- Create the video games table
CREATE TABLE "video_game" (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(255) NOT NULL,
    "cover_url" TEXT,
    "editor" VARCHAR(255) NOT NULL,
    "genre" VARCHAR(255),
    "resume" TEXT,
    "jvcom_link" TEXT,
    "senscritique_link" TEXT,
    "rate" INTEGER,
    "critic" TEXT
);

COMMIT;
