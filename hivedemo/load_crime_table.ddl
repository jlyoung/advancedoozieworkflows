CREATE EXTERNAL TABLE IF NOT EXISTS crime(
    ID STRING,
    Case_Number STRING,
    Case_Date STRING,
    Block STRING,
    IUCR INT,
    Primary_Type STRING,
    Description STRING,
    Location_Description STRING,
    Arrest BOOLEAN,
    Domestic BOOLEAN,
    Beat STRING,
    District STRING,
    Ward STRING,
    Community_Area STRING,
    FBI_Code STRING,
    X_Coordinate INT,
    Y_Coordinate INT,
    Case_Year INT,
    Updated_On STRING,
    Latitude DOUBLE,
    Longitude DOUBLE,
    Location STRING)
COMMENT 'This is crime data for the city of Chicago.'
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/tmp/crime'
TBLPROPERTIES("skip.header.line.count"="1");
