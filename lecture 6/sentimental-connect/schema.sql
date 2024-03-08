CREATE TABLE `users` (
    "id" INT AUTO_INCREMENT,
    "first_name" VARCHAR(32) NOT NULL,
    "last_name" VARCHAR(32) NOT NULL,
    "user_name" VARCHAR(32) NOT NULL UNIQUE,
    "password" VARCHAR(128) NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE `schools` (
    "id" INT AUTO_INCREMENT,
    "type" ENUM('Primary','Secondary','Higher Education') NOT NULL,
    "location" TINYTEXT ,
    "year" YEAR DEFAULT YEAR(CURRENT_DATE()) NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE `companies` (
    "id" INT AUTO_INCREMENT,
    "industry" ENUM('Technology','Education','Business') NOT NULL,
    "location" TINYTEXT ,
    PRIMARY KEY("id")
);

CREATE TABLE `people_connect` (
    "id" INT AUTO_INCREMENT,
    "user_1" INT,
    "user_2" INT,
     PRIMARY KEY("id"),
    FOREIGN KEY("user_1") REFERENCES "users"("id"),
    FOREIGN KEY("user_2") REFERENCES "users"("id")

);

CREATE TABLE compay_connect (
    "id" INT AUTO_INCREMENT,
    "user_id" INT NOT NULL,
    "company_id" INT NOT NULL,
    "start_date" DATE DEFAULT CURRENT_DATE(),
    "end_date" DATE DEFAULT CURRENT_DATE(),
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);


CREATE TABLE university_connect (
    "id" INT AUTO_INCREMENT,
    "user_id" INT NOT NULL,
    "company_id" INT NOT NULL,
    "start_date" DATE DEFAULT CURRENT_DATE(),
    "end_date" DATE DEFAULT CURRENT_DATE(),
    "degree" VARCHAR(10) NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "schools"("id")
);
