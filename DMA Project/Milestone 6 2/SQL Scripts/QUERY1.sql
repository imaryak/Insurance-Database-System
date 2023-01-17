SELECT 
    d.money_insured AS MONEY_INSURED,
    d.insurance_type AS INSURANCE_TYPE,
    a.insurance_id AS INSURANCE_ID,
    b.status AS STATUS,
    f.P_Name AS PatientName
FROM
    insure a,
    claim_details b,
    insurance_type C,
    health_insurance d,
    person e,
    patient_info f
WHERE
    a.claim_id = b.claim_id
        AND b.status = 'TRUE'
        AND a.insurance_id = c.insurance_id
        AND c.insurance_type = d.insurance_type
        AND e.person_insurance_id = c.insurance_id
        AND e.personID = f.Person_ID
LIMIT 10;