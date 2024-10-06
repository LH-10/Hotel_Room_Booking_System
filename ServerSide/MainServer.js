const express=require('express')
const SendRooms=require("./Routes/SendRooms")
const cors=require('cors')
const app=express()
const port=3030

app.use(cors())
app.use("/getRooms",SendRooms)
app.listen(port)