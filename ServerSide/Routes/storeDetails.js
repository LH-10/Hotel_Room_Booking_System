const express=require('express')
const router=express.Router()
router.use(express.urlencoded({ extended:true}))
router.use(express.json())
const cors=require('cors')
const sqlconnection=require('../Dbconnection')
const sendConfirmationEmail=require('../EmailFunction')
router.use(cors())

async function customerData(name,email,phoneNumber){
    try
    {
    await sqlconnection.execute('insert into Customers(customer_name,email,phone_number) values(?,?,?)',[name,email,phoneNumber])}

    catch(err){
        console.log(err)
        throw err;
    }
}

async function Bookingdata(name,roomid,checkindate,checkoutdate,status){
    try
    {
    await sqlconnection.execute('insert into Bookings(customer_name,room_id,check_in_date,check_out_date,booking_status) values(?,?,?,?,?)',[name,roomid,checkindate,checkoutdate,status])}

    catch(err){
        console.log(err)
        throw err;
    }
}

router.post('/',async(req,res)=>{
    const a= {customerName,email,roomId,checkInDate,checkOutDate,bookingStatus,phoneNumber}=req.body
    let phoneNumber2=BigInt(phoneNumber) 
       console.log(phoneNumber)

    await customerData(customerName,email,phoneNumber2)
    await Bookingdata(customerName,roomId,checkInDate,checkOutDate,bookingStatus)
    await sendConfirmationEmail(email,customerName,{checkoutDate:checkOutDate,checkinDate:checkInDate,room:roomId})
    console.log(a)
    res.json({result:"success"})
    
})
module.exports=router