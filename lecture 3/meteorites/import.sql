CREATE TABLE "temp" (
   "name" TEXT
   ,"id" TEXT
   ,"nametype" TEXT
   ,"class" TEXT
   ,"mass" NUMERIC
   ,"discovery" TEXT
   ,"year" TEXT
   ,"lat" NUMERIC
   ,"long" NUMERIC
);

.import --csv meteorites.csv temp

CREATE TABLE "meteorites" (
   "id" INTEGER
   ,"name" TEXT
   ,"class" TEXT
   ,"mass" NUMERIC
   ,"discovery" TEXT
   ,"year" TEXT
   ,"lat" NUMERIC
   ,"long" NUMERIC,
   PRIMARY KEY("id")
);

DELETE FROM "temp" WHERE  "nametype"='Relict';

UPDATE "temp" SET "mass"=NULL WHERE "mass"='';
UPDATE "temp" SET "year"=NULL WHERE "year"='';
UPDATE "temp" SET "lat"=NULL WHERE "lat"='';
UPDATE "temp" SET "long"=NULL WHERE "long"='';


UPDATE "temp" SET "long"=ROUND("long",2);
UPDATE "temp" SET "lat"=ROUND("lat",2);
UPDATE "temp" SET "mass"=ROUND("mass",2);

INSERT INTO "meteorites" ("name", "class","mass","discovery","year","lat","long")
 SELECT  "name","class","mass","discovery","year","lat","long" FROM "temp"
  ORDER BY "year","name" ;
