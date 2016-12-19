CREATE TABLE IF NOT EXISTS crimenumbers(year INT, number_of_crimes INT);
INSERT INTO crimenumbers SELECT ${queryYear} as year, count(*) as number_of_crimes FROM crime WHERE case_date LIKE '%${queryYear}%';
