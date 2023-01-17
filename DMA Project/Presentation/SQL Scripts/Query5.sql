SELECT
status, COUNT(claim_id) AS COUNT, AVG(issued_amt)
FROM 
claim_details a,
bill_details b
WHERE
b.bill_id = a.claim_bill_id
AND status = 'true'