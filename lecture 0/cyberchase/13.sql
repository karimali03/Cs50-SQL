SELECT "title","season","air_date" FROM "episodes"
WHERE "air_date" LIKE '%-12-%' OR "air_date" LIKE '%-01-%';