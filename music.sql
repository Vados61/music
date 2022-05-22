CREATE DATABASE music;

CREATE TABLE genre(
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE artist(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	genre_id INTEGER REFERENCES genre(id)
);

CREATE TABLE album(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(40) NOT NULL, 
	artist_id INTEGER REFERENCES artist(id),
	year_of_release INTEGER CHECK (year_of_release >= 1500)
);


CREATE TABLE track(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(40) NOT NULL,
	album_id INTEGER REFERENCES album(id),
	duration_sec INTEGER
);