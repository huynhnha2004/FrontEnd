import React from 'react'

export default function CartItem() {
  return (
    <tr>
      <td>1</td>
        <td>Cy Ganderton</td>
        <td>Quality Control Specialist</td>
        <td><input type='number' min='1' max='50'/>     </td>
        <td>Blue</td>
        <td>
        <button className="btn btn-square btn-outline">
        <svg
            xmlns="http://www.w3.org/2000/svg"
            className="h-6 w-6"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor">
            <path
            strokeLinecap="round"
            strokeLinejoin="round"
            strokeWidth="2"
            d="M6 18L18 6M6 6l12 12" />
        </svg>
        </button>
    </td>
    </tr>
  )
}
