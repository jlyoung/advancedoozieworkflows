CREATE TABLE IF NOT EXISTS crimespertype(primary_type STRING, number_of_crimes INT);
INSERT INTO crimespertype SELECT '${primaryCrimeType}' AS primary_type, count(*) AS number_of_crimes FROM crime WHERE Primary_Type='${primaryCrimeType}';
