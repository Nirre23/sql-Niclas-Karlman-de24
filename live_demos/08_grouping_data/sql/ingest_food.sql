CREATE TABLE IF NOT EXISTS 
food as (SELECT * FROM read_csv_auto('data/food_searches.csv'))