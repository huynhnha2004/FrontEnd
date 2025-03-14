import React from 'react';  
import { Routes, Route } from 'react-router-dom';  
import Home from '../pages/site/Home';  
import Contact from '../pages/site/Contact';  
import About from '../pages/site/About';  
import Product from '../pages/site/Product';  

import CartPage from '../pages/site/CartPage';


import ProductDetailPage from '../pages/site/ProductDetailPage';
import Login from './../pages/site/Login';
import Register from './../pages/site/Register';
import RegisterPage from '../pages/site/RegisterPage';
import LoginPage from '../pages/site/LoginPage';

export default function SiteRoutes() {  
    return (  
        <Routes>  
            <Route path='/' element={<Home />} />  
            <Route path='/contact' element={<Contact />} />  
            <Route path="/about" element={<About />} />  
            <Route path="/product" element={<Product />} />  
            <Route path="/detail/:id" element={<ProductDetailPage />} />  
            <Route path="/cart" element={<CartPage />} />
            <Route path="/login" element={<LoginPage />} />
            <Route path="/register" element={<RegisterPage />} />
            
        </Routes>  
    );  
}  