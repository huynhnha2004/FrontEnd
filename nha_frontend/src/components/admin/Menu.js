import React from 'react'
import { Link } from 'react-router-dom'

export default function Menu() {
  return (
    <div>
      <ul className="menu bg-base-200  w-56">
  <li>
    <details open>
      <summary>Product</summary>
      <ul>
        <li><Link to='/admin/products/add'>Add</Link></li>
        <li><Link to='/admin/products'>List</Link></li>
      
      </ul>
    </details>
  </li>
  <li>
    <Link to='/admin/gallery'>Gallery</Link>
  </li>
  <li>
    <details open>
      <summary>Category</summary>
      <ul>
        <li><a>Add</a></li>
        <li><a>List</a></li>
        <li><a>Trash</a></li>
      </ul>
    </details>
  </li>
  <li>
    <details open>
      <summary>Brand</summary>
      <ul>
        <li><a>Add</a></li>
        <li><a>List</a></li>
        <li><a>Trash</a></li>
      </ul>
    </details>
  </li>
  <li>
    <details open>
      <summary>Carousel</summary>
      <ul>
        <li><a>Add</a></li>
        <li><a>List</a></li>
        <li><a>Trash</a></li>
      </ul>
    </details>
  </li>
  <li>
    <details open>
      <summary>User</summary>
      <ul>
        <li><a>Add</a></li>
        <li><a>List</a></li>
        <li><a>Trash</a></li>
      </ul>
    </details>
  </li>
  <li>
    <details open>
      <summary>Order</summary>
      <ul>
        <li><a>Add</a></li>
        <li><a>List</a></li>
        <li><a>Trash</a></li>
      </ul>
    </details>
  </li>
  <li>
    <details open>
      <summary>User</summary>
      <ul>
        <li><a>Add</a></li>
        <li><a>List</a></li>
        <li><a>Trash</a></li>
      </ul>
    </details>
  </li>
</ul>
    </div>
  )
}
