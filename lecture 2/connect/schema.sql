CREATE TABLE users (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "user_name" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE schools (
    "id" INTEGER,
    "type" TEXT NOT NULL,
    "location" TEXT,
    "year" NUMERIC,
    PRIMARY KEY ("id")
);

CREATE TABLE companies (
    "id" INTEGER,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE people_connect (
    "user_1" INTEGER,
    "user_2" INTEGER,
    FOREIGN KEY("user_1") REFERENCES "users"("id")
    FOREIGN KEY("user_2") REFERENCES "users"("id")

);

CREATE TABLE compay_connect (
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "title" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id")
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);

CREATE TABLE university_connect (
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "degree" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id")
    FOREIGN KEY("company_id") REFERENCES "schools"("id")
);
