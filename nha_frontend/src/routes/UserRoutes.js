import React from 'react'
import { Routes, Route } from 'react-router-dom'
import Home from './../pages/site/Home'

import About from '../pages/site/About';
import Contact from './../pages/site/Contact';
import Product from './../pages/site/Product';
import ProductDetail from './../pages/site/ProductDetail';
import CartPage from '../pages/site/CartPage';
import LoginPage from '../pages/site/LoginPage';
import RegisterPage from '../pages/site/RegisterPage';

export default function UserRoutes() {
  return (
    <Routes>
        <Route path='/' element={<Home/>}/>
        <Route path='/contact' element={<Contact/>}/>
        <Route path='/about' element={<About/>}/>
        <Route path='/product' element={<Product/>}/>
        <Route path='/detail/:id' element={<ProductDetail/>}/>
        <Route path='/cart' element={<CartPage/>}/>
        <Route path='/login' element={<LoginPage/>}/>
        <Route path='/register' element={<RegisterPage/>}/>
    </Routes>
  )
}
