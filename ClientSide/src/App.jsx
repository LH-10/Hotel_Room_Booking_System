import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import {Routes,Route} from "react-router-dom"
import './App.css'
import RoomList from './Components/RoomCard'
import RoomBookingForm from './Components/BookingForm'

function App() {
  const [count, setCount] = useState(0)
  return (

  <> 
  <Routes>
    <Route path="/rooms" element={ <RoomList/>}/> 
    <Route path="/form/:id/:type/:price" element={<RoomBookingForm />} />
        </Routes>
  </>    
   
    
  )
}

export default App
