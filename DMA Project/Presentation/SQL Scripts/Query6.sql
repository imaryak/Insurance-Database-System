#Query to fetch Patient information who were treated in Hospitals in Boston and had their insurance covered.

SELECT 
	DISTINCT(e.Person_ID),
    e.P_Name AS PatientName,
    b.treats_infection_code AS InfectionCode,
    c.Injury_Name AS Injury,
    a.hospital_name,
    a.h_address
FROM
    hospital a,
    treats b,
    injury c,
    infected d,
    patient_info e
WHERE
    a.hospital_id = b.treats_hospital_id
        AND b.treats_infection_code = c.infection_code
        AND c.infection_code = d.infection_cod
        AND d.person_id = e.Person_ID
        AND e.Status = 'true'
        AND a.h_address LIKE '%Boston%'
        AND a.isunderinsurance = 'TRUE'
LIMIT 10;