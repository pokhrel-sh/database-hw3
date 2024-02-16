-- creates a new table called MusicVideo with the following columns, makes track_ID the foreign key, and musicVideo_ID
-- the primary key.
CREATE TABLE "MusicVideo" (
	"musicVideo_ID"	INTEGER,
	"track_ID"	INTEGER NOT NULL UNIQUE,
	"video_Director" TEXT NOT NULL,
	FOREIGN KEY("track_ID") REFERENCES "tracks"("TrackId"),
	PRIMARY KEY("musicVideo_ID")
);
