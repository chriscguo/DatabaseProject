CREATE TABLE IF NOT EXISTS user (
	userID integer PRIMARY KEY,
	email varchar NOT NULL,
	firstName text NOT NULL,
	lastName text NOT NULL,
	password varchar NOT NULL,
country text NOT NULL
);

CREATE TABLE IF NOT EXISTS app (
	name text PRIMARY KEY,
	description text NOT NULL
);

CREATE TABLE IF NOT EXISTS platform(
	platformName text PRIMARY KEY,
	isMobile integer CHECK(isMobile = 0 OR isMobile = 1)
);

CREATE TABLE IF NOT EXISTS show(
	showID integer PRIMARY KEY,
	title text NOT NULL,
	description text NOT NULL
);

CREATE TABLE IF NOT EXISTS video(
	videoID integer PRIMARY KEY,
isFree integer CHECK(isFree=0 OR isFree=1),
title text NOT NULL,
releaseDate text NOT NULL,
description text NOT NULL,
appName text NOT NULL,
duration integer NOT NULL,
	FOREIGN KEY (appName) REFERENCES app (name)	
);

CREATE TABLE IF NOT EXISTS platformApp (
	appName text NOT NULL,
	platformName text NOT NULL,
	version real NOT NULL,
	rating real CHECK(Rating > 0 and Rating <= 10),
	FOREIGN KEY (appName) REFERENCES app (Name),
	FOREIGN KEY (platformName) REFERENCES platform (platformName),
PRIMARY KEY(appName,platformName)
);

CREATE TABLE IF NOT EXISTS userWatchedVideos(
userID integer NOT NULL,
	videoID integer NOT NULL,	
	isLiked integer CHECK(isLiked=0 OR isLiked=1),
	FOREIGN KEY (userID) REFERENCES user (userID),
	FOREIGN KEY (videoID) REFERENCES video (videoID),
PRIMARY KEY(userID ,videoID)
);

CREATE TABLE IF NOT EXISTS tags(
	videoID integer NOT NULL,
	videoTag text NOT NULL,
	FOREIGN KEY (videoID) REFERENCES video (videoID),
PRIMARY KEY(videoID ,videoTag)


);

CREATE TABLE IF NOT EXISTS inSeason(
	videoID integer NOT NULL,
	seasonNumber integer NOT NULL,
	showID integer NOT NULL,
	episodeNumber integer,
	CHECK(seasonNumber > 0),
	FOREIGN KEY (showID) REFERENCES show (showID),
PRIMARY KEY(videoID),
FOREIGN KEY (videoID) REFERENCES video (videoID)
	
);

CREATE TABLE IF NOT EXISTS userListShow(
	userID integer NOT NULL,
	showID integer NOT NULL,
FOREIGN KEY (userID) REFERENCES user (userID),
FOREIGN KEY (showID) REFERENCES show (showID),
PRIMARY KEY(userID ,showID)
);

CREATE TABLE IF NOT EXISTS userListVideo(
	userID integer NOT NULL,
	videoID integer NOT NULL,
	FOREIGN KEY (userID) REFERENCES user (userID),
FOREIGN KEY (videoID) REFERENCES video (videoID),
PRIMARY KEY(userID ,videoID)
);


CREATE TABLE IF NOT EXISTS userWatchedVideos(
	userID integer NOT NULL,
	videoID integer NOT NULL,
	isLiked integer CHECK(isLiked=0 OR isLiked=1),
	FOREIGN KEY (userID) REFERENCES user (userID),
	FOREIGN KEY (videoID) REFERENCES video (videoID),
PRIMARY KEY (userID ,videoID)

);

CREATE TABLE IF NOT EXISTS userSubscriptions(
	userID integer NOT NULL,
	appName text NOT NULL,
	expiration text,
	cost real NOT NULL,
	FOREIGN KEY (userID) REFERENCES user (userID),
	FOREIGN KEY (appName) REFERENCES app (name),
PRIMARY KEY(userID ,appName)
);
