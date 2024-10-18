require('dotenv').config(); 
const nodemailer = require('nodemailer');

const sendConfirmationEmail = (customerEmail, customerName, bookingDetails, nights, booking_id , total_cost) => {
  let transporter = nodemailer.createTransport({
    service: 'gmail', 
    auth: {
      user: process.env.EMAIL_USER, 
      pass: process.env.EMAIL_PASS  
    }
  });

  
  let mailOptions = {
    from: '"Hotel Booking" <' + process.env.EMAIL_USER + '>', 
    to: customerEmail, 
    subject: 'Booking Confirmation',     html: `<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            background-color: #003366;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .content {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 0.8em;
            color: #666;
        }
        img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Booking Confirmation</h1>
    </div>
    <div class="content">
        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Hotel Image" style="width: 100%; max-width: 600px; height: auto;">
        <h2>Hello, ${customerName}!</h2>
        <p>Thank you for booking with us. Here are your booking details:</p>
        <p><strong>Room:</strong> ${bookingDetails.room}</p>
        <p><strong>Check-in Date:</strong> ${bookingDetails.checkinDate}</p>
        <p><strong>Check-out Date:</strong> ${bookingDetails.checkoutDate}</p>
        <p><strong>Number of Nights:</strong> ${nights}</p>
        <p><strong>Booking ID:</strong> ${booking_id}</p>
        <p><strong>Total Cost:</strong> ${total_cost}</p>
        <p>We look forward to hosting you!</p>
    </div>
    <div class="footer">
        <p>Best regards,<br>Hotel Booking Team</p>
        <p>If you have any questions, please contact us at ${process.env.EMAIL_USER}</p>
    </div>
</body>
</html>`
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      return console.log('Error sending email: ', error);
    }
    console.log('Email sent: ' + info.response);
  });
};



module.exports = sendConfirmationEmail;