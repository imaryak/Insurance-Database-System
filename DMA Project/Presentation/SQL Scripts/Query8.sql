#Query to fetch top 10 total Bill amount for the treatment of various injuries
SELECT 
    bill_id as Bill_ID,
    f.date_of_discharge,
    f.date_of_admission,
    a.infection_code as Infection_Code,
    a.Injury_name as Injury_Name,
    e.Price as TestPrice, 
    f.bill_amt as Treatment_amount,
    (e.Price + f.bill_amt) AS Total_Bill
FROM
    injury a,
    Treats b,
    hospital c,
    conducts d,
    test e,
    bill f
WHERE
    a.infection_code = b.treats_infection_code
        AND b.treats_hospital_id = c.hospital_id
        AND c.hospital_id = d.hospital_id
        AND d.test_code = e.Test_code
       s AND e.billid = f.bill_id
ORDER BY (e.Price + f.bill_amt) desc
LIMIT 10;