DROP TABLE IF EXISTS spot;
DROP TABLE IF EXISTS spot_photo;
DROP TABLE IF EXISTS spot_category;
DROP TABLE IF EXISTS spot_category_association;

CREATE TABLE spot (
	spot_id 	INTEGER		NOT NULL	PRIMARY KEY,
	name 		TEXT		NULL,
	longitude 	REAL		NOT NULL,
	latitude 	REAL		NOT NULL,
	description	TEXT		NULL,
	rating 		INTEGER		NOT NULL	DEFAULT 0
	);

CREATE TABLE spot_photo (
	spot_photo_id 	INTEGER		NOT NULL	PRIMARY KEY,
	spot_id 		INTEGER		NOT NULL,
	photo_filepath	TEXT		NOT NULL,
	created_date	DATETIME 	NOT NULL	DEFAULT current_timestamp,
	modified_date 	DATETIME 	NOT NULL 	DEFAULT current_timestamp,

	FOREIGN KEY (spot_id) REFERENCES spot_table (spot_id) 
    	ON DELETE CASCADE	ON UPDATE CASCADE
	);

CREATE TABLE spot_category (
	spot_category_code		INTEGER		NOT NULL	PRIMARY KEY
	);

CREATE TABLE spot_category_association (
	spot_id 						INTEGER		NOT NULL,
	spot_category_code				INTEGER		NOT NULL,
	created_date					DATETIME 	NOT NULL	DEFAULT current_timestamp,
	modified_date 					DATETIME 	NOT NULL 	DEFAULT current_timestamp,

	PRIMARY KEY (spot_id, spot_category_code),
	FOREIGN KEY (spot_id) REFERENCES spot_table (spot_id) 
    	ON DELETE CASCADE	ON UPDATE CASCADE,
    FOREIGN KEY (spot_category_code) REFERENCES spot_category (spot_category_code)
    	ON DELETE CASCADE	ON UPDATE CASCADE
	);

-- Insert dummy data
INSERT INTO spot (name, longitude, latitude, description, rating)
VALUES
	("Bulgwang Downledge Spot", 37.61595, 126.92478, "Small marble downledge.", 2),
	("Paju Ledge Spot", 37.707672, 126.747231, "3 perfect marble ledges in a row. Nice flat ground.", 1),
	("Dangsan Ledge Spot", 37.532908, 126.903882, "A few curved ledges. One skinny ledge that looks fun.", 1),
	("Euijeongbu Spot", 37.532908, 126.903882, "A nice park.", 1)
;

INSERT INTO spot_photo (spot_id, photo_filepath)
VALUES 
	(1, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot1photo1"),
	(1, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot1photo2"),
	(1, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot1photo3"),
	(2, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot2photo1"),
	(2, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot2photo2"),
	(2, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot2photo3"),
	(3, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot3photo1"),
	(3, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot3photo2"),
	(3, "/data/user/0/com.dhochmanrquick.skatespotorganizer/files/spot3photo3")
;

INSERT INTO spot_category (spot_category_code)
VALUES 
	(-1),
	(0),
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14),
	(15)
;
	
INSERT INTO spot_category_association (spot_id, spot_category_code)
VALUES 
	(1, 0),
	(1, 1),
	(1, 2),
	(2, 2),
	(2, 3),
	(2, 4),
	(3, 4),
	(3, 5),
	(3, 6)
;