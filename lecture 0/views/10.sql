SELECT "English_title"
AS "Maximum Brightness and Contrast Art Title"
FROM "views"
WHERE "artist"='Hokusai'
ORDER BY "brightness" DESC , "contrast" DESC LIMIT 5;