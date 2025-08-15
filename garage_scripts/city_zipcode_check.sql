/*check the city and the zipcode and look for obvious mismatches. This will help in checking addresses against road segments*/

SELECT
    ap.city,
    ap.zip
FROM
    tn911.address_points ap
GROUP BY city, zip
ORDER by city;

