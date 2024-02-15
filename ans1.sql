CREATE TABLE "MusicVideo" (
	"musicVideo_ID"	INTEGER,
	"track_ID"	INTEGER NOT NULL UNIQUE,
	"video_Director" TEXT NOT NULL,
	FOREIGN KEY("track_ID") REFERENCES "tracks"("TrackId"),
	PRIMARY KEY("musicVideo_ID")
);
