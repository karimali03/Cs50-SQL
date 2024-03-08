CREATE TABLE pasengers (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER CHECK ("age" > 0),
    PRIMARY KEY("id")
);

CREATE TABLE airlines (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "section" TEXT CHECK ("section" IN ()),
    PRIMARY KEY("id")

);

CREATE TABLE flight (
    "id" INTEGER,
    "name" TEXT,
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "airport_from" TEXT,
    "airport_to" TEXT,
    "timedate_from" NUMERIC,
    "timedate_to" NUMERIC,
    PRIMARY KEY("id")
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")


);

CREATE TABLE check_in (
    "id" INTEGER,
    "flight_id" INTEGER,
    "date" NUMERIC,
    PRIMARY KEY("id")
    FOREIGN KEY("flight_id") REFERENCES "flight"("id")
);
