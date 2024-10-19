import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import {Routes,Route} from "react-router-dom"
import LandingPage from './Components/Landingpage'
import './App.css'
import RoomList from './Components/RoomCard'
import RoomBookingForm from './Components/BookingForm'
import AdminPage from './Components/AdminPage'

function App() {
  const [count, setCount] = useState(0)
  return (

  <> 
  <Routes>
    <Route path='/' element={<LandingPage/>}></Route>
    <Route path="/rooms" element={ <RoomList/>}/> 
    <Route path="/Admin_page" element={ <AdminPage/>}/> 
    <Route path="/form/:id/:type/:price" element={<RoomBookingForm />} />
        </Routes>
  </>    
   
    
  )
}

export default App
