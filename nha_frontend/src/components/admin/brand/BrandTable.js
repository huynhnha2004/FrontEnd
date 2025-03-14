import React from 'react';
import BrandItem from './BrandItem';
import BrandFilter from './BrandFilter';

export default function BrandTable() {
    return (
        <div className="container mx-auto my-8">
            <BrandFilter />
            <div className="overflow-x-auto">
                <table className="table table-auto w-full border-collapse border border-gray-300">
                    <thead className="bg-gray-100">
                        <tr>
                            <th className="border border-gray-300 p-2">STT</th>
                            <th className="border border-gray-300 p-2">Brand Name</th>
                            <th className="border border-gray-300 p-2">Image</th>
                            <th className="border border-gray-300 p-2">Giá</th>
                            <th className="border border-gray-300 p-2">Status</th>
                            <th className="border border-gray-300 p-2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <BrandItem />
                    </tbody>
                </table>
            </div>
        </div>
    );
}
