import React, { useState } from 'react';
import Pagination from '../../components/site/Pagination';

const allProducts = [
    { id: 1, name: "Product 1" },
    { id: 2, name: "Product 2" },
    { id: 3, name: "Product 3" },
    { id: 4, name: "Product 4" },
    { id: 5, name: "Product 5" },
    { id: 6, name: "Product 6" },
    { id: 7, name: "Product 7" },
    { id: 8, name: "Product 8" },
    { id: 9, name: "Product 9" },
    { id: 10, name: "Product 10" },
    { id: 11, name: "Product 11" },
    { id: 12, name: "Product 12" }
];

export default function ProductPage() {
    const [page, setPage] = useState(1);
    const itemsPerPage = 4;
    const totalPages = Math.ceil(allProducts.length / itemsPerPage);

    // Lọc các sản phẩm theo trang hiện tại
    const currentProducts = allProducts.slice(
        (page - 1) * itemsPerPage,
        page * itemsPerPage
    );

    return (
        <div>
            <h1 className="text-3xl font-semibold text-center my-6">Product List</h1>
            
            {/* Hiển thị sản phẩm */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4 px-4">
                {currentProducts.map(product => (
                    <div key={product.id} className="p-4 bg-white shadow-md rounded-md">
                        <h3 className="text-lg font-semibold">{product.name}</h3>
                    </div>
                ))}
            </div>

            {/* Phân trang */}
            <Pagination 
                pagin={{ page, pageCount: totalPages }} 
                setPage={setPage} 
            />
        </div>
    );
}
