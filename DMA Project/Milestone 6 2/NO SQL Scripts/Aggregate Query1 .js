db.getCollection("test").find({})

db.test.aggregate([
{$group:{_id:"$Test_code", Price:{$max:"$Price"}}},
{$project:{_id:0, "Test_code":"$_id", Price:1}},
{$sort:{Price:-1}},
{$limit: 10}
])


