create table if not exists genres (
	id serial primary key,
	name_genre varchar(40) unique not null
);

create table if not exists artist (
	id serial primary key,
	name_artist varchar(40) unique not null
);

create table if not exists genres_artist (
	id serial primary key,
	genres_id integer not null references genres(id),
	artist_id integer not null references artist(id),
)

create table if not exists album (
	id serial primary key,
	number_album varchar(40) unique not null,
	year_album varchar(4) unique not null,	
	name_album varchar(40) unique not null,
);

create table if not exists artist_album (
	id serial primary key,
	artist_id integer not null references artist(id),
	album_id integer not null references album(id),
)

create table if not exists tracks (
	id serial primary key,
	id_album integer references album(id) not null,
	name_tracks varchar(40) not null,
	time_tracks varchar(15) not null,
);

create table if not exists collection_of_songs (
	id serial primary key,
	name_collection varchar(40) not null,
	year_collection varchar(4) not null
);

create table if not exists songs_in_the_collection (
	id serial primary key,
	collection_of_songs_id integer not null references collection_of_songs(id),
	tracks_id integer not null references tracks(id)
);