BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "hero_types" (
	"type_id"	INTEGER NOT NULL,
	"type_name"	REAL NOT NULL,
	PRIMARY KEY("type_id")
);
CREATE TABLE IF NOT EXISTS "hero_keywords" (
	"keyword_id"	INTEGER NOT NULL,
	"keyword_name"	TEXT NOT NULL,
	PRIMARY KEY("keyword_id")
);
CREATE TABLE IF NOT EXISTS "option_types" (
	"option_type_id"	INTEGER NOT NULL,
	"option_type_name"	TEXT NOT NULL,
	PRIMARY KEY("option_type_id")
);
CREATE TABLE IF NOT EXISTS "hero_options" (
	"option_id"	INTEGER NOT NULL,
	"option_name"	TEXT NOT NULL,
	"option_points"	INTEGER NOT NULL,
	"option_type"	INTEGER,
	FOREIGN KEY("option_type") REFERENCES "option_types"("option_type_id"),
	PRIMARY KEY("option_id")
);
CREATE TABLE IF NOT EXISTS "heroes" (
	"hero_id"	INTEGER NOT NULL,
	"hero_name"	TEXT NOT NULL UNIQUE,
	"hero_move"	INTEGER NOT NULL,
	"hero_fight_combat"	INTEGER NOT NULL,
	"hero_fight_range"	INTEGER NOT NULL,
	"hero_strength"	INTEGER NOT NULL,
	"hero_defence"	INTEGER NOT NULL,
	"hero_attacks"	INTEGER NOT NULL,
	"hero_wounds"	INTEGER NOT NULL,
	"hero_courage"	INTEGER NOT NULL,
	"hero_might"	INTEGER NOT NULL,
	"hero_will"	INTEGER NOT NULL,
	"hero_fate"	INTEGER NOT NULL,
	"hero_points"	INTEGER NOT NULL,
	"hero_keyword_1"	INTEGER,
	"hero_keyword_2"	INTEGER,
	"hero_keyword_3"	INTEGER,
	"hero_keyword_4"	INTEGER,
	"hero_keyword_5"	INTEGER,
	"hero_type"	INTEGER,
	"hero_wargear"	TEXT,
	"hero_option_1"	INTEGER,
	"hero_option_2"	INTEGER,
	"hero_option_3"	INTEGER,
	"hero_option_4"	INTEGER,
	"hero_option_5"	INTEGER,
	FOREIGN KEY("hero_option_4") REFERENCES "hero_options"("option_id"),
	FOREIGN KEY("hero_keyword_2") REFERENCES "hero_keywords"("keyword_id"),
	FOREIGN KEY("hero_keyword_4") REFERENCES "hero_keywords"("keyword_id"),
	FOREIGN KEY("hero_keyword_5") REFERENCES "hero_keywords"("keyword_id"),
	FOREIGN KEY("hero_option_1") REFERENCES "hero_options"("option_id"),
	FOREIGN KEY("hero_type") REFERENCES "hero_types"("type_id"),
	FOREIGN KEY("hero_option_5") REFERENCES "hero_options"("option_id"),
	FOREIGN KEY("hero_keyword_1") REFERENCES "hero_keywords"("keyword_id"),
	FOREIGN KEY("hero_keyword_3") REFERENCES "hero_keywords"("keyword_id"),
	FOREIGN KEY("hero_option_3") REFERENCES "hero_options"("option_id"),
	FOREIGN KEY("hero_option_2") REFERENCES "hero_options"("option_id"),
	PRIMARY KEY("hero_id")
);
INSERT INTO "hero_types" VALUES (1,'Hero of Legend');
INSERT INTO "hero_types" VALUES (2,'Hero of Valour');
INSERT INTO "hero_types" VALUES (3,'Hero of Fortitude');
INSERT INTO "hero_types" VALUES (4,'Minor Hero');
INSERT INTO "hero_types" VALUES (5,'Independent Hero');
INSERT INTO "hero_keywords" VALUES (1,'HERO');
INSERT INTO "hero_keywords" VALUES (2,'INFANTRY');
INSERT INTO "hero_keywords" VALUES (3,'HOBBIT');
INSERT INTO "hero_keywords" VALUES (4,'WIZARD');
INSERT INTO "hero_keywords" VALUES (5,'MAN');
INSERT INTO "hero_keywords" VALUES (6,'GONDOR');
INSERT INTO "hero_keywords" VALUES (7,'ELF');
INSERT INTO "hero_keywords" VALUES (8,'MIRKWOOD');
INSERT INTO "hero_keywords" VALUES (9,'DWARF');
INSERT INTO "hero_keywords" VALUES (10,'EREBOR');
INSERT INTO "hero_keywords" VALUES (11,'PONY');
INSERT INTO "option_types" VALUES (1,'MOUNT');
INSERT INTO "option_types" VALUES (2,'EQUIPMENT');
INSERT INTO "hero_options" VALUES (1,'Mithril Coat',15,2);
INSERT INTO "hero_options" VALUES (2,'Sting',5,2);
INSERT INTO "hero_options" VALUES (3,'Elven Cloak',5,2);
INSERT INTO "hero_options" VALUES (4,'Cart',25,1);
INSERT INTO "hero_options" VALUES (5,'Horse',10,1);
INSERT INTO "hero_options" VALUES (6,'Anduril, Flame of The West',40,2);
INSERT INTO "hero_options" VALUES (7,'Armour',5,2);
INSERT INTO "hero_options" VALUES (8,'Bow',5,2);
INSERT INTO "hero_options" VALUES (9,'Shield',5,2);
INSERT INTO "heroes" VALUES (1,'Frodo Baggins',4,3,3,2,3,1,2,6,2,3,3,60,1,2,3,NULL,NULL,3,'Dagger, The One Ring',1,2,3,NULL,NULL);
INSERT INTO "heroes" VALUES (2,'Samwise Gamgee',4,3,3,2,3,1,2,6,2,2,2,40,1,2,3,NULL,NULL,3,'Dagger',3,NULL,NULL,NULL,NULL);
INSERT INTO "heroes" VALUES (3,'Meriadoc Brandybuck',4,3,3,2,3,1,1,4,0,0,1,10,1,2,3,NULL,NULL,4,'Dagger',3,NULL,NULL,NULL,NULL);
INSERT INTO "heroes" VALUES (4,'Peregrin Took',4,3,3,2,3,1,1,4,0,0,1,10,1,2,3,NULL,NULL,4,'Dagger',3,NULL,NULL,NULL,NULL);
INSERT INTO "heroes" VALUES (5,'Gandalf The Grey',6,5,4,4,5,1,3,7,3,6,3,170,1,2,4,NULL,NULL,1,'Staff of Power, Glamdring, Narya',4,5,NULL,NULL,NULL);
INSERT INTO "heroes" VALUES (6,'Aragorn - Strider',6,6,3,4,5,3,3,6,3,3,3,160,1,2,5,NULL,NULL,2,'Sword',6,5,7,8,3);
INSERT INTO "heroes" VALUES (7,'Boromir of Gondor',6,6,4,4,5,3,3,6,6,1,0,95,1,2,5,6,NULL,2,'Armour, Sword, Horn of Gondor',5,3,9,NULL,NULL);
INSERT INTO "heroes" VALUES (8,'Legolas Greenleaf',6,6,3,4,4,2,2,6,3,2,3,100,1,2,7,8,NULL,2,'Elven-made daggers and Elf Bow',5,7,3,NULL,NULL);
INSERT INTO "heroes" VALUES (9,'Gimli Son of Gloin',5,6,4,4,8,2,2,6,3,2,2,100,1,2,9,10,NULL,2,'Heavy Dwarf armour, Master Forged two-handed axe, two axes and throwing axes',3,NULL,NULL,NULL,NULL);
INSERT INTO "heroes" VALUES (10,'Bill The Pony',8,1,6,3,4,1,2,3,0,1,1,25,1,2,11,NULL,NULL,5,'Iron-shod hooves',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "heroes" VALUES (11,'Smeagol',5,4,4,4,4,2,2,4,1,0,1,30,NULL,NULL,NULL,NULL,NULL,5,'Strong strangling fingers',NULL,NULL,NULL,NULL,NULL);
COMMIT;
