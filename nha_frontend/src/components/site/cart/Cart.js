import React from 'react'
import CartItem from './CartItem'
import CartSummary from './CartSummary'

export default function Cart() {
  return (
    <div className='mx-40'>
        <h1 className='text-h1 text-center'>Your Cart</h1>
      <div className="overflow-x-auto">
  <table className="table table-zebra">
    {/* head */}
    <thead>
      <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>SubTotal</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    
        
        <CartItem/>
        <CartItem/>
        <CartItem/>
        <CartItem/>
    
    </tbody>
    <tfoot>
        <CartSummary/>
    </tfoot>
  </table>
</div>
    </div>
  )
}
