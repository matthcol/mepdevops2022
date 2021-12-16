create table stars (
	id serial constraint pk_stars primary key,
	name varchar(150) not null,
	birthdate date null,
	deathdate date null
);

create table movies (
	id serial constraint pk_movies primary key,
	title varchar(250) not null,
	year smallint not null,
	duration smallint null,
	genres varchar(200) null,
	synopsis text null,
	poster_uri varchar(300),
	id_director int null
);

create table play(
	id_movie int not null,
	id_actor int not null,
	role varchar(100),
	constraint pk_play primary key(id_movie, id_actor)
);

alter table movies add constraint fk_movies_director FOREIGN KEY (id_director)
references stars(id);
alter table movies add constraint CHK_MOVIES_YEAR CHECK (year >= 1888);
alter table movies add constraint CHK_MOVIES_DURATION CHECK (duration > 0);

alter table play add constraint FK_PLAY_MOVIE FOREIGN KEY (id_movie)
references movies(id);
alter table play add constraint FK_PLAY_ACTOR FOREIGN KEY (id_actor)
references stars(id);


