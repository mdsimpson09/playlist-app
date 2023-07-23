from app import app, db
from models import Playlist, Song, PlaylistSong

DROP DATABASE playlist_app;
CREATE DATABASE playlist_app;

\c playlist_app;
DROP TABLE IF EXISTS songs;

CREATE TABLE songs
(id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  artist TEXT NOT NULL,
  genre TEXT NOT NULL);

INSERT INTO songs
  (title, artist, genre)
VALUES
  ('The Force Awakens', 'iggypop', 'rock'),
  ('want it all', 'back street boys', 'pop'),
  ('bye-bye-bye', 'nsync', 'pop'),
  ('turn the page', 'bob seger', 'rock'),
  ('forever young', 'rod stewart', 'rock'),
  ('pick of destiny', 'jack black', 'hair metal'),
  ('enter sandman', 'metallica', 'metal'),
  ('where i found you', 'future islands', 'edm')

ALTER TABLE IF EXISTS playlist_songs


CREATE TABLE playlists
(id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  genre TEXT NOT NULL); 

INSERT INTO playlists
  (name, genre)
VALUES
  ('saturday vibes','rock'),
  ('sunday vibes', 'alternative'),
  ('monday vibes', 'metal'),
  ('tuesday vibes', 'mixed'),
  ('friday vibes', 'chillwave'),
  ('wednesday vibes', 'mixed'),
  ('thursday vibes', 'burn it down')

DROP TABLE IF EXISTS playlist_songs;

CREATE TABLE playlist_songs
(
  id SERIAL PRIMARY KEY,
  playlist_id INTEGER REFERENCES playlists(id),
  song_id INTEGER REFERENCES songs(id)
);


INSERT INTO playlist_songs
(song_id, playlists_id)
VALUES (1, 4), (2, 6), (3, 6), (4, 1), (5, 1), (6, 1), (7, 4), (8, 5);

-- DROP COLUMN IF EXISTS studio_id;


ALTER TABLE playlist_songs
  ADD COLUMN playlist_id INTEGER REFERENCES playlists;

UPDATE playlist_songs 
  SET playlists_id=1
WHERE id IN (1, 5, 6, 7, 9, 10, 11, 14, 19, 20, 21, 23, 24, 29, 31, 33, 40, 42, 47, 52, 53, 64, 67, 70, 77, 78, 82, 86, 95, 100, 101);

UPDATE playlist_songs
  SET playlists_id=2
WHERE id in (2, 12, 13, 34, 41, 66, 68, 69, 84, 87);


ALTER TABLE playlist_songs
  ADD CONSTRAINT fk_studio
  FOREIGN KEY (studio_id)
  REFERENCES studios(id);

