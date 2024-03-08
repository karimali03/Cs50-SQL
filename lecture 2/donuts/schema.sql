CREATE TABLE ingeridents (
    "id" INTEGER,
    "name" TEXT,
    "price" NUMERIC,
    "amount" NUMERIC,
    PRIMARY KEY ("id")
);

CREATE TABLE donuts (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "gluten-free" TEXT NOT NULL,
    "price" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE donuts_ingeridents (
    "id" INTEGER,
    "dount_id" INTEGER,
    "ingerident_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY("dount_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ingerident_id") REFERENCES "ingeridents"("id")
);

CREATE TABLE orders (
    "id" INTEGER,
    "customer_id" INTEGER,
    "dount_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id"),
    FOREIGN KEY("dount_id") REFERENCES "donuts"("id")
);


CREATE TABLE customers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY ("id")
);
