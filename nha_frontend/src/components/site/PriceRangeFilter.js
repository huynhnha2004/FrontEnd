import React from 'react';

export default function PriceRangeFilter({ minPrice, maxPrice, setMinPrice, setMaxPrice }) {
    return (
        <div className="pt-10">
            <h2 className="text-xl font-semibold">Price </h2>
            <div className="flex space-x-4 pt-5">
                <div className="w-full max-w-xs">
                    <label className="block text-sm font-medium text-gray-700 pb-5">Min Price</label>
                    <select
                        value={minPrice || ""}
                        className="select select-accent w-full rounded-md border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500"
                        onChange={(e) => setMinPrice(Number(e.target.value))}
                    >
                        <option disabled selected>
                            Min
                        </option>
                        <option value="0">0</option>
                        <option value="100">100</option>
                        <option value="500">500</option>
                        <option value="1000">1000</option>
                    </select>
                </div>

                <div className="w-full max-w-xs">
                    <label className="block text-sm font-medium text-gray-700 pb-5">Max Price</label>
                    <select
                        value={maxPrice || ""}
                        className="select select-accent w-full rounded-md border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500"
                        onChange={(e) => setMaxPrice(Number(e.target.value))}
                    >
                        <option disabled selected>
                            Max
                        </option>
                        <option value="100">100</option>
                        <option value="500">500</option>
                        <option value="1000">1000</option>
                        <option value="5000">5000</option>
                        <option value="1000000000">&gt; 5000</option>
                    </select>
                </div>
            </div>
        </div>
    );
}
