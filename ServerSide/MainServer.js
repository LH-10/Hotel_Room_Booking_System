const express=require('express')
const SendRooms=require("./Routes/SendRooms")
const StoreDetails=require("./Routes/storeDetails")
const cors=require('cors')
const app=express()
const port=3030

app.use(cors())
app.use("/getRooms",SendRooms)
app.use("/customerData",StoreDetails)
app.listen(port)