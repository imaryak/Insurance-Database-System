db.getCollection("purchases").find({})



db.purchases.find({ start_date : { $lt : Timestamp('8/23/2022')}})