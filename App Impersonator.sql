CREATE TABLE cytus (id INTEGER PRIMARY KEY AUTOINCREMENT, song_name TEXT, chapter TEXT,artist TEXT, best_score INTEGER);

INSERT INTO cytus (song_name, chapter, artist, best_score) VALUES ("Oriens","IX","Ginkiha",916460);
INSERT INTO cytus (song_name, chapter, artist, best_score) VALUES ("Qualia","IX","Kiva",905892);
INSERT INTO cytus (song_name,chapter,artist,best_score) VALUES ("Saika","III","Rabpit",975684);

SELECT * from cytus;

UPDATE cytus SET best_score = 1000000 WHERE id = 2;
DELETE FROM cytus WHERE id = 1;
SELECT * from cytus;