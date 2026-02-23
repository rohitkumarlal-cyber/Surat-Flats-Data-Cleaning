SELECT * FROM flats;
-- 1-> What is the average price of flats in each location

SELECT property_location, AVG(price_val) 
FROM flats 
GROUP BY property_location;

-- 2-> Which locations have the most expensive properties (Top 10)

SELECT property_location, area_sqft, price_val
FROM flats
ORDER BY price_val DESC
LIMIT 10;

-- 3-> What is the average price per sqft by area type

SELECT area_type , AVG(price_per_sqft_val) AS "average price per sqft"
FROM flats
GROUP BY area_type
ORDER BY AVG(price_per_sqft_val);

-- 4-> Which locations give the best value for money (lowest price per sqft)

SELECT property_location , MIN(price_per_sqft_val) AS "Lowest price per sqft"
FROM flats
GROUP BY property_location
ORDER BY MIN(price_per_sqft_val)
LIMIT 10;

-- 5-> Which locations are overpriced

SELECT 
	property_location ,
	MAX(price_val) AS "Overpriced location",
	ROUND(AVG(price_val):: NUMERIC, 2) AS "Average Price",
    COUNT(*) AS "Total Listings"
FROM flats
GROUP BY property_location
ORDER BY "Average Price" DESC
LIMIT 10;

-- 6-> What is the price difference between furnished vs unfurnished homes

SELECT 
	furnishing,
	AVG(price_val) AS "Average Price"
FROM flats
WHERE furnishing IN ('Furnished', 'Unfurnished')
GROUP BY furnishing
ORDER BY "Average Price" DESC;

-- 7-> outliers (suspiciously expensive or cheap flats)

SELECT 
    property_name,
    property_location,
    price_val,
    area_sqft,
    CASE 
        WHEN price_val >= 10000000 AND area_sqft < 1000 THEN 'Suspiciously Expensive'
        WHEN price_val <= 100000 AND area_sqft > 1000 THEN 'Suspiciously Cheap'
    END AS outliers
FROM flats
WHERE 
    (price_val >= 10000000 AND area_sqft < 1000) 
    OR 
    (price_val <= 100000 AND area_sqft > 1000)
ORDER BY price_val DESC;
	
-- 8-> Luxury and budget flats 

SELECT 
    property_location,
    COUNT(CASE WHEN price_val > 10000000 THEN 1 END) AS "luxury count",
    COUNT(CASE WHEN price_val <= 10000000 THEN 1 END) AS "budget count"
FROM flats
GROUP BY property_location;


