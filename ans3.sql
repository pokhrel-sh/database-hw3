INSERT INTO MusicVideo (track_ID, video_Director) VALUES ((SELECT TrackId FROM tracks WHERE Name = "Voodoo"), "Voodoo");

