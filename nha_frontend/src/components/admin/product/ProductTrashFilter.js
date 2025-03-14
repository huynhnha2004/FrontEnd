import React from 'react';

export default function ProductTrashFilter() {
    return (
        <div className="flex space-x-4 mb-5">
            <input
                type="text"
                placeholder="Search product..."
                className="input input-bordered w-1/3 p-2 border border-gray-300 rounded"
            />
            <select className="select select-bordered w-1/5 p-2 border border-gray-300 rounded">
                <option value="">Select Category</option>
                <option value="electronics">Electronics</option>
                <option value="fashion">Fashion</option>
                <option value="home">Home</option>
                <option value="books">Books</option>
            </select>
            <select className="select select-bordered w-1/5 p-2 border border-gray-300 rounded">
                <option value="">All Products</option>
                <option value="in-stock">In Stock</option>
                <option value="out-of-stock">Out of Stock</option>
            </select>
            <select className="select select-bordered w-1/5 p-2 border border-gray-300 rounded">
                <option value="">Sort</option>
                <option value="asc">ASC</option>
                <option value="desc">DESC</option>
            </select>
        </div>
    );
}
