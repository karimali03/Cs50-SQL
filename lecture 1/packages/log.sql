
-- *** The Lost Letter ***
SELECT "type","address" FROM "addresses" WHERE "id" = (
SELECT "address_id" FROM "scans" WHERE "package_id" = (
    SELECT "id" from "packages" WHERE
       ( "from_address_id" =
           ( SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue') AND
           "contents" Like 'congratulatory%' )    AND
           "action"="Drop"
)
);
-- *** The Devious Delivery ***
-- q1
SELECT "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE
    "action" = "Drop"  AND
    "package_id" = (SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL )
);
-- q2
SELECT "contents" FROM "packages" WHERE
  "from_address_id" IS NULL;
-- *** The Forgotten Gift ***
-- q1
SELECT "contents" FROM "packages" WHERE
 "from_address_id" = ( SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street' )
AND
 "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place');
-- q2
SELECT "name" FROM "drivers" WHERE "id" = (
 SELECT "driver_id" FROM "scans" WHERE "package_id"= (
    SELECT "id" FROM "packages" WHERE
   "from_address_id" = ( SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street' )
AND
 "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place')
 )  AND "action"="Pick"
 ORDER BY "id" DESC LIMIT 1 );
