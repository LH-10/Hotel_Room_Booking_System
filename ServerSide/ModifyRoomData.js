const db = require('./Dbconnection');  // Import the MySQL connection

// Create an async function to handle the insertion
async function insertCustomer(name,email,phno) {
  try {
    const [rows] = await db.execute('INSERT INTO Customers (customer_name, email, phone_number) VALUES (?, ?)', [name,email,phno]);
    console.log('Customer inserted successfully:', rows);
  } catch (err) {
    console.error('Error inserting customer:', err);
  }
}

// Call the function
// insertCustomer();

// Create an async function to handle the insertion
async function insertRoom(roomName, roomPrice, roomStatus = 'Available') {
  try {
    const [rows] = await db.execute(
      'INSERT INTO Rooms (room_name, room_price, room_status) VALUES (?, ?, ?)', 
      [roomName, roomPrice, roomStatus]
    );
    console.log('Room inserted successfully:', rows);
  } catch (err) {
    console.error('Error inserting room:', err);
  }
}


     insertRoom('Deluxe Room', 11000);   // ₹11,000
     insertRoom('Executive Room', 15000); // ₹15,000
     insertRoom('Family Room', 20000);    // ₹20,000
     insertRoom('Deluxe Room', 12500);    // ₹12,500
     insertRoom('Executive Room', 17500); // ₹17,500
     insertRoom('Family Room', 25000);     // ₹25,000
     insertRoom('Deluxe Room', 13500);    // ₹13,500
     insertRoom('Executive Room', 16500); // ₹16,500
  // You can change the values as needed

