BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "TRAPPIST-1_exoplanets" (
	"Planet"	TEXT,
	"Year Length (days)"	REAL,
	"Day Length (days)"	REAL,
	"Temperature (K)"	INTEGER,
	"Habitability"	TEXT,
	"Water"	TEXT,
	"Wind Speed"	TEXT,
	"Mass (Earths)"	REAL,
	"Radius (Earths)"	REAL,
	"Gravity (Earth)"	REAL,
	"Atmosphere"	TEXT,
	"Composition"	TEXT,
	"Planet Type"	TEXT,
	"Diameter (km)"	INTEGER
);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('TRAPPIST-1b',1.51,1.51,398,'Low','Unknown','Unknown',1.374,1.116,1.1,'Likely none','Rocky','Terrestrial',14220);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('TRAPPIST-1c',2.42,2.42,340,'Low','Unknown','Unknown',1.308,1.097,1.09,'Possibly very thin','Rocky','Terrestrial',13970);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('TRAPPIST-1d',4.05,4.05,286,'Possible','Unknown','Unknown',0.388,0.77,0.65,'Unknown','Rocky / possible volatiles','Terrestrial',9810);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('TRAPPIST-1e',6.1,6.1,250,'Best candidate','Possible','Unknown',0.692,0.92,0.82,'Unknown','Rocky','Terrestrial',11730);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('TRAPPIST-1f',9.21,9.21,218,'Possible','Possible','Unknown',1.039,1.045,0.95,'Unknown','Rocky / possible ice','Terrestrial',13320);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('TRAPPIST-1g',12.35,12.35,197,'Possible','Possible','Unknown',1.321,1.129,1.04,'Unknown','Rocky / possible ice','Terrestrial',14380);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('TRAPPIST-1h',18.77,18.77,172,'Low','Possible ice','Unknown',0.326,0.755,0.57,'Unknown','Rocky / possible ice','Terrestrial',9620);
INSERT INTO "TRAPPIST-1_exoplanets" VALUES ('SPECULOOS-1',NULL,NULL,2566,'Inhabitable','Impossible','Unknown',29870.0,13.02,5.24,'Likely none','Plasma','Dwarf Star',169000);
COMMIT;
