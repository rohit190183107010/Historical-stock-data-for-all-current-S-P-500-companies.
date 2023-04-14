SHOW TABLES FROM files;
Select * from files.all_stocks_5yrcsv LIMIT 10;
SELECT date, close, volume FROM files.all_stocks_5yrcsv;

CREATE MODEL 
  mindsdb.prices
FROM files
  (SELECT * FROM files.all_stocks_5yrcsv)
PREDICT close;

