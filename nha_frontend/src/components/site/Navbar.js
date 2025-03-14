import React from "react";
import { Link } from "react-router-dom";

export default function Navbar() {
  var user = localStorage.getItem("user")
    ? JSON.parse(localStorage.getItem("user"))
    : null;
  const handleLogout = () => {
    localStorage.removeItem("token");
    localStorage.removeItem("user");
    window.location.href = "/login";
  };
  return (
    <div className="navbar bg-pink-500 via-pink-500 to-red-500 text-white font-sans shadow-lg">
      <div className="navbar-start">
        <div className="dropdown">
          <div
            tabIndex={0}
            role="button"
            className="btn btn-ghost lg:hidden text-white"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              className="h-5 w-5"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                d="M4 6h16M4 12h8m-8 6h16"
              />
            </svg>
          </div>
          <ul
            tabIndex={0}
            className="menu menu-sm dropdown-content bg-white text-gray-800 rounded-box z-[1] mt-3 w-52 p-2 shadow"
          >
            <li>
              <Link to="/">Home</Link>
            </li>
            <li>
              <Link to="/about">About</Link>
            </li>
            <li>
              <Link to="/product">Shop</Link>
            </li>
            <li>
              <details>
                <summary>Pages</summary>
                <ul className="p-2 min-w-max">
                  <li>
                    <Link to="/#">Thông tin</Link>
                  </li>
                </ul>
              </details>
            </li>
            <li>
              <Link to="/contact">Contact</Link>
            </li>
          </ul>
        </div>
        <Link
          to="/"
        className="btn btn-ghost text-xl text-pink-600 font-extrabold border-2 border-green-500 px-6 py-2 rounded-full active:text-white active:bg-green-500 transition-all duration-300 transform active:scale-110 italic tracking-widest rotate-6 bg-gradient-to-r from-pink-500 to-green-500">
          ZARA shop
        </Link>
      </div>

      <div className="navbar-center hidden lg:flex">
        <ul className="menu menu-horizontal px-1 text-white">
          <li>
            <Link to="/" className="hover:text-yellow-300">
              Home
            </Link>
          </li>
          <li>
            <Link to="/about" className="hover:text-yellow-300">
              About
            </Link>
          </li>
          <li>
            <Link to="/product" className="hover:text-yellow-300">
              Shop
            </Link>
          </li>
          <li>
            <details>
              <summary className="hover:text-yellow-300">Pages</summary>
              <ul className="p-2 bg-white text-gray-800 min-w-max rounded">
                <li>
                  <Link to="/#">Thông tin</Link>
                </li>
              </ul>
            </details>
          </li>
          <li>
            <Link to="/contact" className="hover:text-yellow-300">
              Contact
            </Link>
          </li>
        </ul>
      </div>
      {user && (
        <div className="navbar-end">
          <div className="dropdown dropdown-end">
            <div
              tabIndex={0}
              role="button"
              className="btn btn-ghost btn-circle hover:bg-pink-500"
            >
              <div className="indicator">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  className="h-5 w-5 text-white"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="2"
                    d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"
                  />
                </svg>
                <span className="badge badge-sm indicator-item bg-yellow-400 text-black">
                  8
                </span>
              </div>
            </div>
            <div
              tabIndex={0}
              className="card card-compact dropdown-content bg-white z-[1] mt-3 w-52 shadow"
            >
              <div className="card-body text-gray-800">
                <span className="text-lg font-bold">8 Items</span>
                <span className="text-info">Subtotal: $999</span>
                <div className="card-actions">
                  <button className="btn btn-primary btn-block bg-gradient-to-r from-blue-500 to-blue-700 text-white hover:from-blue-400 hover:to-blue-600">
                    View cart
                  </button>
                </div>
              </div>
            </div>
          </div>
          {user && (
            <div className="dropdown dropdown-end">
              <div
                tabIndex={0}
                role="button"
                className="btn btn-ghost btn-circle avatar hover:bg-pink-500"
              >
                <div className="w-10 rounded-full">{user.username}</div>
              </div>
              <ul
                tabIndex={0}
                className="menu menu-sm dropdown-content bg-white text-gray-800 rounded-box z-[1] mt-3 w-52 p-2 shadow"
              >
                <li>
                  <a className="justify-between hover:text-blue-500">
                    Profile
                    <span className="badge bg-blue-500 text-white">New</span>
                  </a>
                </li>
                <li>
                  <a className="hover:text-blue-500">Settings</a>
                </li>
                <li onClick={handleLogout}>
                  <a className="hover:text-blue-500">Logout</a>
                </li>
              </ul>
            </div>
          )}
          {!user && (
            <div>
              <Link to="/login">Login</Link>
            </div>
          )}
        </div>
      )}
    </div>
  );
}
