import React, { useState } from 'react';

export default function Search({ searchKey, setSearchKey }) {
  const [localSearch, setLocalSearch] = useState(searchKey || '');

  const handleSearch = () => {
    setSearchKey(localSearch); // Truyền giá trị tìm kiếm về cha
  };

  return (
    <div className="flex items-center space-x-2">
      <label className="relative w-full">
        <input
          type="text"
          className="input input-bordered w-full pr-10 py-2 pl-3 text-sm rounded-md border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500"
          placeholder="Tìm kiếm..."
          value={localSearch}
          onChange={(e) => setLocalSearch(e.target.value)} // Cập nhật giá trị input
        />
        <button
          onClick={handleSearch}
          className="absolute top-1/2 right-2 transform -translate-y-1/2 text-gray-500"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 16 16"
            fill="currentColor"
            className="h-5 w-5 opacity-70"
          >
            <path
              fillRule="evenodd"
              d="M9.965 11.026a5 5 0 1 1 1.06-1.06l2.755 2.754a.75.75 0 1 1-1.06 1.06l-2.755-2.754ZM10.5 7a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Z"
              clipRule="evenodd"
            />
          </svg>
        </button>
      </label>
    </div>
  );
}
