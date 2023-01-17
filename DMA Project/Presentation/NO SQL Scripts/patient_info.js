db.getCollection("patient_info").find({})
db.patient_info.aggregate(
 [
 {
$match: {
Status: {
$eq: "true"
}}},
{
$count :"Patients who had Insurance"}])