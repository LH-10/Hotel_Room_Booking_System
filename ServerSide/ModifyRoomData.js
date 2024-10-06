const sql =require("mysql2")
require('dotenv').config();

const con = sql.createConnection({
    host: "localhost",
    user: process.env.USER_NAME,
    password: process.env.PASS
  });

con.connect(function(err){
    if (err)
        { console.log("Error occured")
            throw err}
    console.log("DB COnnected")

})

console.log()
