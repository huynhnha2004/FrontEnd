import React from 'react'
import Navbar from '../../components/site/Navbar';
import Carousel from '../../components/site/Carousel';
import Footer from '../../components/site/Footer';
import Cart from '../../components/site/cart/Cart';
import Checkout from '../../components/site/cart/Checkout';

export default function CartPage() {
  return (
    <div>
      <Navbar />
      <Carousel/>
      <Cart/>
      <Checkout/>
      <Footer/>
    </div>
  )
}
