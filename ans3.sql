-- inserts the TrackId for the track "Voodoo" into the MusicVideo table and makes it "Voodoo"
INSERT INTO MusicVideo (track_ID, video_Director) VALUES ((SELECT TrackId FROM tracks WHERE Name = "Voodoo"), "Voodoo");

