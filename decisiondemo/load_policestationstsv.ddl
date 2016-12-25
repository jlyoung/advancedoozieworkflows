DROP TABLE policestationstsv;
DROP TABLE policestationscsv;
CREATE EXTERNAL TABLE IF NOT EXISTS policestationstsv(
    DISTRICT INT,
    DISTRICT_NAME STRING,
    ADDRESS STRING,
    CITY STRING,
    STATE STRING,
    ZIP STRING,
    WEBSITE STRING,
    PHONE STRING,
    FAX STRING,
    TTY STRING,
    X_COORDINATE DOUBLE,
    Y_COORDINATE DOUBLE,
    LATITUDE DOUBLE,
    LONGITUDE DOUBLE,
    LOCATION STRING)
COMMENT 'This is police station data for the city of Chicago.'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION '/user/oozie/ooziedemo/decisiondemo/policestationstsv'
TBLPROPERTIES("skip.header.line.count"="1");
