INSERT INTO USER (
userID,
email,
firstName,
lastName,
password,
country 
)
VALUES
 (1, 'chris@northeastern.com', 'Chris', 'Guo', 'ILoveCS', 'Mongolia'),
 (2, 'sangeeta@northeastern.com ', 'Sangeeta', 'Dhingra', 'DatabaseD', 'Switzerland'),
 (3, 'krishanu@northeastern.com', 'Krishanu', 'Datta', 'Hockeyislife123', 'Canada'),
 (4, 'alex@yahoo.com', 'Alex', 'D’Aloisio', '29iroquois!', 'United Kingdom'),
 (5, 'sandy@hotmail.com', 'Sandy', 'Iyr', 'cat123', 'Singapore'),
 (6, 'roger@gmail.com', 'Roger', 'Kwon', 'modernwarfare6', 'Egypt'),
 (7, 'cooper@leblanc.com', 'Cooper', 'Leblanc', 'Kent123', 'United States'),
 (8, 'anthony@msn.com', 'Anthony', 'Wilkinson', 'InGodWe_Trust', 'Italy'),
 (9, 'lauren@northeastern.com', 'Lauren', 'Li', 'apples!!', 'China'),
 (10, 'brit@northeastern.com', 'Brit', 'Chin', 'plantmommy', 'Spain');



INSERT INTO APP (
name,
description
)
VALUES
('Hulu', 'An app that streams shows and live cable.'),
('Netflix', 'An app that forgot to give an f.'),
('Spotify', 'A streaming service to play bangers day and night.'),
('Amazon Video', 'A streaming service that is trying to take over the world.'),
('Beag', 'An app that you think you know but you don’t….'),
('Amazon Fresh', 'An app that serves the coldest veggie dishes on a warm summer’s day.'),
('CNN', 'An app that provides 24/7 coverage of pretzel warmers.'),
('Fox News', 'An app that informs on whenever Wawa’s famous turkey gobbler sub comes out each year.'),
('Apple Music', 'An inferior streaming service.'),
('PBS', 'A constant loop of Bob Ross videos and stuff.');


INSERT INTO UserSubscriptions (
userID,
appName, 
expiration,
cost
)
VALUES
(1, 'Hulu', '1-10-2021', 10.00),
(1, 'Beag', '3-30-2027', 430.10),
(2, 'Spotify', '5-24-2022', 15.00),
(2, 'CNN', '4-29-2021',  19.00),
(2, 'Hulu', '4-30-2022',  10.00),
(4, 'PBS', '7-25-2021', 12.00),
(5, 'Hulu', '6-30-2022',  10.00),
(5, 'Apple Music', '8-12-2021', 78.00),
(6, 'Amazon Fresh', '12-20-2020', 13.00),
(6, 'Netflix', '12-20-2021', 190.00),
(7, 'Netflix', '11-21-2022', 220.00),
(8, 'Apple Music', '1-14-2021', 14.00),
(10,'Spotify', '12-24-2020', 12.00),
(10,'Netflix', '2-14-2021', 28.00);

INSERT INTO Platform (
platformName,
isMobile
)
VALUES
('App Store', 1),
('Google Play', 1),
('Mozilla', 0),
('Firefox', 1),
('Microsoft Edgy', 1),
('Google Chromicus', 1),
('PhiDelta', 0),
('Prudential', 1),
('Liberty',  0),
('OSCRR', 1) ;


INSERT INTO Video  (
videoID,
isFree,
title, 
releaseDate,
description,
appName,
duration
)
VALUES 
(1, 0, 'The Beauty and the Monsoon', '02-02-2010', 'Video of big rains.', 'Hulu', 2558),
(2, 0, 'The Beauty Washed Away', '04-11-2015', 'The big rain wins.', 'Hulu', 4391),
(3, 1, 'The Emoji Movie', '09-29-2020', 'Worst movie in the modern era.', 'Netflix', 7123),
(4, 0, 'The Last Airbender', '05-29-1999', 'Best show ever on Spotify.', 'Spotify', 6124),
(5, 1, 'Wild Kratts', '01-20-1975', 'Two brothers learning about animals.', 'CNN', 1345),
(6, 0, 'Charlie', '04-22-2012', 'Charlie is a man.', 'Fox News', 47),
(7, 0, 'Monkey in the Middle', '07-01-1999', 'Three monkeys, who will be in the middle?', 'Beag', 1433),
(8, 1, 'Charlie and the Chocolate Factory', '03-20-1976', 'Just a man and his factory.', 'PBS', 8658),
(9, 0, 'Good Boy Buddy', '11-23-2007', 'A boy and his good boy, Buddy.', 'Netflix', 5432),
(10,0, 'Music Video Reviews', '12-02-2019',  'A bunch of reviews.', 'Hulu', 1342),
(11,0, 'Spooky Video', '03-01-1965',  'Spooky.', 'Amazon Video', 684),
(12, 1, 'Video of Videos', '02-11-2012', 'Super creative videos.', 'Hulu', 3011),
(13, 1, 'Owl Watch', '11-23-2004', 'Owls are beautiful.', 'Spotify', 1976),
(14, 1, 'Deep Blue', '12-09-2020',  'The majestic oceans on Earth.', 'Google Play', 2345),
(15, 0, 'How to Survive the Apocalypse.', '05-17-2011', 'You either survive or die.', 'Hulu', 322),
(16, 0, 'I’m No Soldier', '05-17-2019', 'Mary confronts Christine', 'Netflix', 2473),
(17, 0, 'The Red Engagement Party.', '10-20-2019', 'Tempers flare at a red hot engagement party.', 'Netflix', 1987),
(18, 0, 'That’s Why They Call it Real Estress', '02-17-2020', 'After hours the bachelorette party seethes with drama.', 'Netflix', 2231);



INSERT INTO inSeason (
videoID,
showID,
seasonNumber,
episodeNumber
)
VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(5, 5, 4, 10),
(6, 4, 2, 8),
(7, 7, 1, 1),
(10, 2, 1, 4),
(11, 3, 8, 20),
(12, 6, 2, 1),
(13, 7, 1, 5),
(14, 8, 1, 8),
(15, 9, 3, 11),
(16, 10, 1, 1),
(17, 10, 2, 1),
(18, 10, 3, 1);


INSERT INTO Show ( 
showID, 
title,
description 
)
VALUES 
(1, 'Beauty Away', 'A beauty is washed away.'),
(2,  'Music', 'Some groovy tunes to start your week.'),
(3, 'Spooky', 'The only way to stay up all night.'),
(4, 'Charlie', 'A guy is called Charlie. He’s pretty cool.'),
(5, 'Wild Kratts Adventures', 'A family friendly show to learn about nature.'), 
(6, 'Bunch of videos', 'A random assortment of videos to make you smile.'),
(7, 'Just some owls', 'Owls are rad!'),
(8, 'Oceans of Earth', 'It’s big, it’s deep, and it’s blue.'),
(9, 'Apocalypse', 'It’s the end of the Earth.'), 
(10, 'Selling Sunset', 'Realtors in sunny LA and their drama.');



INSERT INTO UserWatchedVideos (
userID,
videoID,
isLiked
)
VALUES
(1, 1, 1),
(1, 2, 0),
(1, 6, 0),
(2, 3, 1),
(2, 5, 1),
(2, 15, 1),
(3, 4, 0),
(4, 5, 0),
(4, 6, 1),
(5, 4, 0),
(5, 10, 1),
(5, 11, 0),
(5, 12, 1),
(6, 9, 1),
(6, 8, 0),
(6, 7, 1),
(7, 12, 1),
(7, 7, 0),
(7, 1, 1),
(8, 3, 0),
(8, 7, 1),
(9, 6, 0),
(9, 3, 1),
(9,12, 0),
(10, 14, 0),
(10, 10, 1),
(10, 2,  0),
(10, 4, 1);

INSERT INTO UserListVideo (
userID,
videoID
)
VALUES
(1, 1),
(1,17),
(2, 3),
(2, 5),
(2, 16),
(4, 6),
(4, 7),
(5, 10),
(5, 11),
(6, 9),
(6, 7),
(7, 12),
(7, 1),
(8, 7),
(10, 10),
(10,4);


INSERT INTO userListShow (
userID,
showID
)
VALUES
(1, 2),
(2, 10), 
(2, 3), 
(2, 5),
(3, 10),
(4, 10),
(4, 5),
(5, 6),
(6, 1),
(6, 2),
(7, 4),
(7, 10),
(10, 5),
(10, 3);


INSERT INTO Tags (
videoID,
videoTag
)
VALUES 
(1, 'drama'),
(1, 'horror'),
(2, 'animals'),
(2, 'family-friendly'),
(4, 'adventure'),
(4, 'for kids'),
(5, 'horror'),
(5, 'PG-13'),
(6, 'adventure'),
(8, 'horror'),
(8, 'adults only'),
(9, 'sports'), 
(10, 'music'),
(10, 'rock'),
(12, 'crime'),
(12, 'true-story'),
(13, 'nature'),
(14, 'nature'),
(15, 'horror'),
(15, 'suspense'),
(16, 'drama'),
(17, 'suspense'),
(18, 'drama');

INSERT INTO PlatformApp (
appName,
platformName,
version,
rating 
)
VALUES 
('Netflix', 'App Store', 12, 9.1),
('CNN', 'Liberty', 10, 7.5),
('Spotify', 'App Store', 12, 8.6),
('Beag', 'Liberty', 10, 2.0),
('Fox News', 'App Store', 12, 3.3),
('Amazon Fresh', 'Liberty', 10, 7.5),
('PBS', 'Mozilla', 12, 9),
('Apple Music', 'Liberty', 10, 8.2),
('Amazon Video', 'App Store', 13, 9),
('Amazon Video', 'Prudential', 0, 7.5),
('PBS', 'Google Play', 12, 9),
('CNN', 'Microsoft Edgy', 1, 7.5),
('Netflix', 'Google Play', 12, 8.7),
('CNN', 'Firefox', 9, 3.4),
('Hulu', 'OSCRR', 3, 5.4);


Insert INTO User(userID,email,firstName,lastName,password,country)
VALUES
(52612, 'smithson@yahoo.com','John','Smithson','ILikeTwinkies','Canada');
Insert INTO userWatchedVideos(userID,videoID,isLiked)
VALUES
(52612,1,1),
(52612,2,1),
(52612,3,1),
(52612,4,1),
(52612,5,1),
(52612,6,1),
(52612,7,1),
(52612,8,1),
(52612,9,1),
(52612,10,1),
(52612,11,1),
(52612,12,1),
(52612,13,1),
(52612,14,1),
(52612,15,1),
(52612,16,1),
(52612,17,1),
(52612,18,1);
