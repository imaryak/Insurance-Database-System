## fetch top 10 injury with highest bill amount.
USE INSURANCE;
SELECT 
    a.bill_amt AS Amount,
    b.injury_Name AS Injury,
    b.infection_code AS Infection_Code
FROM
    bill a,
    injury b
WHERE
    b.infection_code = a.injury_code
ORDER BY a.bill_amt DESC
LIMIT 10;