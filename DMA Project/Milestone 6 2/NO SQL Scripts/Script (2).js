db.getCollection("hospital").find({})

db.hospital.aggregate([
    {
        $group : {
            _id: "aggregates",
            hospital_count: {
                $topN:{
                    output: ['hospital_name',
                $avg: "$bill_amt"
            },    
        }
    }
])
