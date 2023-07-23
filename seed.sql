-- from app import app, db
-- from models import Playlist, Song, PlaylistSong

INSERT INTO playlists (name, description) VALUES
    ('Relaxing Music', 'Chill and calming songs'),
    ('Party Hits', 'Upbeat and energetic songs'),
    ('Workout Playlist', 'Motivating songs for exercise'),
    ('Road Trip Mix', 'Great songs for a road trip');

INSERT INTO songs (title, artist) VALUES
    ('Song A', 'Artist A'),
    ('Song B', 'Artist Y'),
    ('Song C', 'Artist Z'),
    ('Song D', 'Artist X'),
    ('Song E', 'Artist C');





-- DROP DATABASE songs_db;
-- CREATE DATABASE songs_db;

-- \c songs_db;
-- DROP TABLE IF EXISTS songs;

-- CREATE TABLE songs
-- (id SERIAL PRIMARY KEY,
--   title TEXT NOT NULL,
--   artist TEXT NOT NULL);

-- INSERT INTO songs
--   (title, artist)
-- VALUES
--   ('The Force Awakens', 'iggypop'),
--   ('want it all', 'back street boys'),
--   ('bye-bye-bye', 'nsync'),
--   ('turn the page', 'bob seger'),
--   ('forever young', 'rod stewart'),
--   ('pick of destiny', 'jack black'),
--   ('enter sandman', 'metallica'),
--   ('where i found you', 'future islands')

-- ALTER TABLE IF EXISTS playlist_songs


-- CREATE TABLE playlists
-- (id SERIAL PRIMARY KEY,
--   name TEXT NOT NULL,
--   description TEXT NOT NULL); 

-- INSERT INTO playlists
--   (name, description)
-- VALUES
--   ('saturday vibes','rock'),
--   ('sunday vibes', 'alternative'),
--   ('monday vibes', 'metal'),
--   ('tuesday vibes', 'mixed'),
--   ('friday vibes', 'chillwave'),
--   ('wednesday vibes', 'mixed'),
--   ('thursday vibes', 'burn it down')

-- DROP TABLE IF EXISTS playlist_songs;

-- CREATE TABLE playlist_songs
-- (
--   id SERIAL PRIMARY KEY,
--   playlist_id INTEGER REFERENCES playlists(id),
--   song_id INTEGER REFERENCES songs(id)
-- );


-- INSERT INTO playlist_songs
-- (song_id, playlists_id)
-- VALUES (1, 4), (2, 6), (3, 6), (4, 1), (5, 1), (6, 1), (7, 4), (8, 5);

-- -- DROP COLUMN IF EXISTS studio_id;


-- ALTER TABLE playlist_songs
--   ADD COLUMN playlist_id INTEGER REFERENCES playlists;

-- UPDATE playlist_songs 
--   SET playlists_id=1
-- WHERE id IN (1, 5, 6, 7, 9, 10, 11, 14, 19, 20, 21, 23, 24, 29, 31, 33, 40, 42, 47, 52, 53, 64, 67, 70, 77, 78, 82, 86, 95, 100, 101);

-- UPDATE playlist_songs
--   SET playlists_id=2
-- WHERE id in (2, 12, 13, 34, 41, 66, 68, 69, 84, 87);

-- UPDATE movies
--   SET studio_id=3
-- WHERE id in (3, 28, 44, 55, 58, 59, 60, 62, 65);

-- UPDATE movies
--   SET studio_id=4
-- WHERE id in (4, 17, 27, 38, 39, 43, 50, 91, 94, 97);

-- UPDATE movies
--   SET studio_id=5
-- WHERE id in (8, 15, 22, 32, 45, 54, 56, 57, 61, 72, 73, 76, 79, 81, 83, 85, 89, 92, 93, 99);

-- UPDATE movies
--   SET studio_id=6
-- WHERE id in (16, 96);

-- UPDATE movies
--   SET studio_id=7
-- WHERE id in (18, 25, 48, 80, 88);

-- UPDATE movies
--   SET studio_id=8
-- WHERE id in (26, 30, 36, 49, 51, 71, 98);

-- UPDATE movies
--   SET studio_id=9
-- WHERE id in (35, 46, 63);

-- UPDATE movies
--   SET studio_id=10
-- WHERE id in (37);

-- UPDATE movies
--   SET studio_id=11
-- WHERE id in (74, 75, 90);

-- ALTER TABLE playlist_songs
--   ADD CONSTRAINT fk_studio
--   FOREIGN KEY (studio_id)
--   REFERENCES studios(id);

