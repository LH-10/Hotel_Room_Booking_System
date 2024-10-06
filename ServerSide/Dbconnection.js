const sql =require("mysql2")
require('dotenv').config();

const con = sql.createPool({
    host: "localhost",
    database: "hotel_room_booking",
    user: process.env.USER_NAME,
    password: process.env.PASS
  });

// con.connect(function(err){
//     if (err)
//         { console.log("Error occured")
//             throw err}
//     console.log("DB COnnected")


// })

console.log()

module.exports = con.promise()