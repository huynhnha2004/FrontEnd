import React from 'react'


export default function Checkout() {
  return (
    <div className='mx-40'>
      <h2 className='text-h2 mt-5'>Checkout</h2>
      <div className="card bg-base-100 w-full shrink-0 shadow-2xl">
      <form className="card-body">
      <div className="form-control">
          <label className="label">
            <span className="label-text">Name</span>
          </label>
          <input type="text" placeholder="name" className="input input-bordered" required />
        </div>
        <div className="form-control">
          <label className="label">
            <span className="label-text">Phone Number</span>
          </label>
          <input type="phone" placeholder="phone number" className="input input-bordered" required />
        </div>
        <div className="form-control">
          <label className="label">
            <span className="label-text">Email</span>
          </label>
          <input type="email" placeholder="email" className="input input-bordered" required />
        </div>
        <div className="form-control">
          <label className="label">
            <span className="label-text">Address</span>
          </label>
          <input type="text" placeholder="Address" className="input input-bordered" required />
        </div>
        <div className="form-control">
          <label className="label">
            <span className="label-text">Note</span>
          </label>
          <textarea cols='100' rows='5'type="text" placeholder="note" className="input input-bordered" required />
        </div>
        <div className="mt-6 mx-20 flex justify-center">
          <button className="btn btn-primary w-[100px] ">Checkout</button>
        </div>
      </form>
    </div>
    </div>
  )
}
