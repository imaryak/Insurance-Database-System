
SELECT
COUNT(hospital_id) AS Count, isunderinsurance
FROM hospital
GROUP BY isunderinsurance