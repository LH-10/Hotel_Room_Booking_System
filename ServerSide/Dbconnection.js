const sql =require("mysql2")
require('dotenv').config();
let con
try{
con = sql.createPool({
    host: process.env.MYSQL_HOST,
    port:3306,
    database: process.env.DB_NAME,
    user: process.env.USER_NAME,
    password: process.env.PASS
  });
	console.log(con)
}
catch(err){
console.log(err)
}


console.log()

module.exports = con.promise()
