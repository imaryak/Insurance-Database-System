## Query to return the count of Hospitals depending upon they come under insurance or not

SELECT 
    COUNT(hospital_id) AS Count, isunderinsurance, h_address
FROM
    hospital
WHERE h_address = 'Boston, MA'
GROUP BY isunderinsurance;