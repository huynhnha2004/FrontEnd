import React from 'react';
import ProductTrashAction from './ProductTrashAction';

export default function ProductTrashItem() {
    return (
        <tr className="text-center">
            <td className="border border-gray-300 p-2">1</td>
            <td className="border border-gray-300 p-2">Redmi k70</td>
            <td className="border border-gray-300 p-2">Hình</td>
            <td className="border border-gray-300 p-2">10,000,000 VND</td>
            <td className="border border-gray-300 p-2">
                <div className="flex justify-center space-x-4">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor" className="size-6">
                        <path strokeLinecap="round" strokeLinejoin="round" d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor" className="size-6">
                        <path strokeLinecap="round" strokeLinejoin="round" d="m20.25 7.5-.625 10.632a2.25 2.25 0 0 1-2.247 2.118H6.622a2.25 2.25 0 0 1-2.247-2.118L3.75 7.5m6 4.125 2.25 2.25m0 0 2.25 2.25M12 13.875l2.25-2.25M12 13.875l-2.25 2.25M3.375 7.5h17.25c.621 0 1.125-.504 1.125-1.125v-1.5c0-.621-.504-1.125-1.125-1.125H3.375c-.621 0-1.125.504-1.125 1.125v1.5c0 .621.504 1.125 1.125 1.125Z" />
                    </svg>
                </div>
            </td>
            <td className="border border-gray-300 p-2">
                <ProductTrashAction />
            </td>
        </tr>
    );
}
