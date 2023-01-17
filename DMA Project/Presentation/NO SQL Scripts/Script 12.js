db.getCollection("test").find({})

db.patient.aggregate([{
    $group: {
      _id: {
        "categoryCode": "$categoryCode",
        "categoryName": "$categoryName"
      },
      "active_count": {
        $sum: {
          $cond: [{ $in: ["TRUE", "$status"] }, 1, 0]
        }
      }
    }
  }])