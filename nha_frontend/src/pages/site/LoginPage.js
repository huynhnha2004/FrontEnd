import React from 'react'
import Navbar from '../../components/site/Navbar';

import Footer from '../../components/site/Footer';
import Login from '../../components/site/user/Login';

export default function LoginPage() {
  return (
    <div>
       <Navbar />
            <Login/>
        
            <Footer/>
    </div>
  )
}
