CREATE TABLE teamaccount(
	id serial,
	name varchar(32),
	mail varchar(64) not null,
	salt varchar(32) not null,
	password varchar(64) not null,
	primary key(id)
);
CREATE TABLE teambihin(
	id serial,
	name varchar(32) not null,
	num integer,
	primary key(id)
);