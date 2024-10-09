create database hotel_room_booking;
use hotel_room_booking;
Create Table Rooms(
	room_id INT auto_increment primary key,
    room_name varchar(100),
    room_price decimal(10,2),
    room_status ENUM('Available','Booked','Under Maintenance ') 
    default "Available"
);


CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT,
    customer_name VARCHAR(100),
    check_in_date DATE,
    check_out_date DATE,
    booking_status ENUM('Pending', 'Confirmed', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);


CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email varchar(100)
);

CREATE TRIGGER after_booking_insert
AFTER 
INSERT ON Bookings
FOR EACH ROW
    UPDATE Rooms
    SET room_status = 'Booked'
    WHERE room_id = NEW.room_id ;
    
Delimiter //
CREATE PROCEDURE calculate_total_cost (
    IN room_id INT,
    IN check_in DATE,
    IN check_out DATE,
    OUT total_cost DECIMAL(10, 2)
)
BEGIN
    DECLARE price_per_night DECIMAL(10, 2);
    DECLARE nights INT;

    SELECT room_price INTO price_per_night FROM Rooms WHERE room_id = room_id;
    SET nights = DATEDIFF(check_out, check_in);
    SET total_cost = price_per_night * nights;
END //    

select * from Rooms;

ALTER TABLE Customers
ADD column phone_number BIGINT;

ALTER TABLE Customers
ADD UNIQUE (customer_name);

ALTER TABLE Bookings
ADD CONSTRAINT bookings_ibfk_2
FOREIGN KEY (customer_name) 
REFERENCES Customers(customer_name);
 
desc customers;

    


