-- 1. Initial data preview to understand the structure of the dataset.
SELECT * 
FROM read_files('/Volumes/workspace/default/automobile/Automobile.csv', format => 'csv', header => true);

-- 2. Extracting weight and MPG to check for a correlation between car heaviness and fuel economy
SELECT weight, mpg 
FROM read_files('/Workspace/Automobile_Data_Analysis/Automobile.csv', format => 'csv', header => true);

-- 3. Comparing horsepower against MPG to see how engine power affects fuel consumption
SELECT horsepower, mpg 
FROM read_files('/Volumes/workspace/default/automobile/Automobile.csv', format => 'csv', header => true);

-- 4. Analyzing if the number of cylinders in an engine impacts the miles per gallon
SELECT cylinders, mpg 
FROM read_files('/Workspace/Automobile_Data_Analysis/Automobile.csv', format => 'csv', header => true);

-- 5. Checking if the country of origin has any influence on fuel efficiency trends
SELECT origin, mpg 
FROM read_files('/Workspace/Automobile_Data_Analysis/Automobile.csv', format => 'csv', header => true);

-- 6. Investigating how fuel efficiency has evolved or changed over different model years
SELECT model_year, mpg 
FROM read_files('/Workspace/Automobile_Data_Analysis/Automobile.csv', format => 'csv', header => true);

-- 7. Distribution check: Counting how many cars in the dataset fall under each cylinder category
SELECT cylinders, COUNT(cylinders) 
FROM read_files('/Workspace/Automobile_Data_Analysis/Automobile.csv', format => 'csv', header => true)
GROUP BY cylinders;

-- 8. Final Ranking: Identifying the most fuel-efficient vehicles in the entire list
SELECT * 
FROM read_files('/Workspace/Automobile_Data_Analysis/Automobile.csv', format => 'csv', header => true)
ORDER BY mpg DESC;
