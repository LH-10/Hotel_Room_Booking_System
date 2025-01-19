# Hotel Room Booking System

This is a hotel room booking system built using the technologies like React.js, Node.js, Express.js, Tailwind CSS and MySQL database. The project leverages modern web development technologies to create a seamless user and admin experience for booking and managing hotel rooms.

## Features

### Customer Side:
- **Room Categories:**
  - Users can choose from three different categories of rooms.
- **Room Booking:**
  - Users can book a room by filling out a booking form.
  - Upon submission, the user receives an email with their booking details.

### Admin Side:
- **Admin Dashboard:**
  - Admin can add or remove rooms from the room list.
  - Admin can mark the checkout status of any customer.
  - Admin can mark bookings as paid.

## Technology Stack

### Frontend:
- ![React](https://img.shields.io/badge/-React-61DAFB?logo=react&logoColor=white) **React.js:** Built with Vite for fast and optimized development.
- ![Tailwind CSS](https://img.shields.io/badge/-Tailwind%20CSS-38B2AC?logo=tailwind-css&logoColor=white) **Tailwind CSS:** For styling the user interface.

### Backend:
- ![Node.js](https://img.shields.io/badge/-Node.js-339933?logo=node.js&logoColor=white) **Node.js** with ![Express.js](https://img.shields.io/badge/-Express.js-000000?logo=express&logoColor=white) **Express.js:** For building the server-side logic and API endpoints.
- ![MySQL](https://img.shields.io/badge/-MySQL-4479A1?logo=mysql&logoColor=white) **MySQL:** For managing and storing booking and room data.

### Other Tools:
- ![Nodemailer](https://img.shields.io/badge/-Nodemailer-BC9B1E?logo=nodemailer&logoColor=white) **Nodemailer:** For sending email confirmations to users.

## Installation and Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Hotel_Room_Booking_System.git
   cd Hotel_Room_Booking_System
   ```

2. Install dependencies for the frontend:
   ```bash
   cd ClientSide
   npm install
   ```

3. Install dependencies for the backend:
   ```bash
   cd ../ServerSide
   npm install
   ```

4. Configure the environment variables:
   - Create a `.env` file in the `server` directory and add the following:
     ```env
     USER_NAME=MYSQL_USER 
     PASS= YOUR_MYSQL_PASSWORD
     EMAIL_USER=YOUR_EMAIL_ID
     EMAIL_PASS =YOUR_PASSWORD
     ```

5. Start the development servers:
   - Frontend:
     ```bash
     cd ClientSide
     npm run dev
     ```
   - Backend:
     ```bash
     cd ../ServerSide
     nodemon MainServer.js
     ```

6. Access the application:
   - Open the frontend at `http://localhost:5173` (or the Vite-provided URL).
   - The backend API will run on `http://localhost:3030`.

## Database Setup

1. Create a MySQL database with the name specified in the `.env` file.
2. Use the provided SQL scripts (if any) to set up the required tables and relationships.

## Usage

### Customer Side:
- Navigate to the homepage and select a room category.
- Fill out the booking form and submit it.
- Check your email for the booking confirmation.

### Admin Side:
- Log in to the admin dashboard.
- Add or remove rooms using the provided functionality.
- Mark customers as checked out or update their payment status.

## Acknowledgments
- [Vite](https://vitejs.dev/) for fast frontend development.
- [Tailwind CSS](https://tailwindcss.com/) for beautiful and responsive UI design.
- [Node.js](https://nodejs.org/) and [Express.js](https://expressjs.com/) for backend development.
- [MySQL](https://www.mysql.com/) for robust database management.
- [Nodemailer](https://nodemailer.com/) for email functionality.



