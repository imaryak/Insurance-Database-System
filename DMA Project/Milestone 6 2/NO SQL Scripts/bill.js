db.getCollection("bill").find({})
db.bill.aggregate([
    {
        $group : {
            _id:"aggregates",
            average_insured:{
                $avg: "$bill_amt"
            },
        }
    }
])