/* Create table about the people and what they do here */

CREATE TABLE musicians (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, most_popular_song TEXT, genre TEXT, monthly_spotify_listeners INTEGER);

INSERT INTO musicians (name,most_popular_song, genre, monthly_spotify_listeners) VALUES ("Britney Spears","Toxic", "Pop",24490594);
INSERT INTO musicians (name,most_popular_song, genre, monthly_spotify_listeners) VALUES ("Paramore","Misery Business", "Alternative/Indie",14514383);
INSERT INTO musicians (name,most_popular_song, genre, monthly_spotify_listeners) VALUES ("Tyler the Creator","EARFQUAKE","Rap",23740237);
INSERT INTO musicians (name,most_popular_song, genre, monthly_spotify_listeners) VALUES ("The Killers","Mr.Brightside","Alternative/Indie",18952714);
INSERT INTO musicians (name, most_popular_song, genre, monthly_spotify_listeners) VALUES ("Miley Cyrus","Party In the USA","Pop",36890492);
INSERT INTO musicians (name, most_popular_song, genre, monthly_spotify_listeners) VALUES ("Nicki Minaj","Tusa","Rap",37775178);
INSERT INTO musicians (name, most_popular_song, genre, monthly_spotify_listeners) VALUES ("My Chemical Romance", "Teenagers", "Emo",12349042);
INSERT INTO musicians (name, most_popular_song, genre, monthly_spotify_listeners) VALUES ("Fall Out Boy", "Centuries", "Emo",19097077);
INSERT INTO musicians (name, most_popular_song, genre, monthly_spotify_listeners) VALUES ("Dolly Parton","Jolene","Country",10537314);
INSERT INTO musicians (name, most_popular_song, genre, monthly_spotify_listeners) VALUES ("Carrie Underwood","Before He Cheats", "Country",9367388);

CREATE TABLE same_genre (id INTEGER PRIMARY KEY AUTOINCREMENT, genre TEXT, artist1_id INTEGER, artist2_id INTEGER);

INSERT INTO same_genre (genre, artist1_id, artist2_id) VALUES ("Alternative/Indie", 2, 4);
INSERT INTO same_genre (genre, artist1_id, artist2_id) VALUES ("Pop",1,5);
INSERT INTO same_genre (genre, artist1_id, artist2_id) VALUES ("Rap",3,6);
INSERT INTO same_genre (genre, artist1_id, artist2_id) VALUES ("Emo",7,8);
INSERT INTO same_genre (genre, artist1_id, artist2_id) VALUES ("Country",9,10);

SELECT * FROM musicians;
SELECT * FROM same_genre;

/*The most popular song of two artists who have the same genre*/
SELECT a.most_popular_song, b.most_popular_song FROM same_genre
JOIN musicians a ON same_genre.artist1_id = a.id
JOIN musicians b ON same_genre.artist2_id = b.id;
