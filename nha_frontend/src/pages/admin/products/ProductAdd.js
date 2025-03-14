import React from 'react';
import Navbar from '../../../components/admin/Navbar';
import Menu from '../../../components/admin/Menu';
import Footer from '../../../components/admin/Footer';
import ProductForm from '../../../components/admin/product/ProductForm';

export default function ProductAdd() {
    return (
        <div className="min-h-screen bg-pink-100 flex flex-col">
            {/* Header */}
            <Navbar />

            {/* Content */}
            <div className="flex flex-1">
                {/* Sidebar Menu */}
                <div className="hidden lg:block w-1/4 bg-white shadow-md p-4">
                    <Menu />
                </div>

                {/* Main Content */}
                <div className="w-full lg:w-3/4 bg-white shadow-md p-6 mx-auto">
                    <h1 className="text-3xl font-bold mb-6 text-gray-800">Thêm sản phẩm</h1>
                    <ProductForm />
                </div>
            </div>

            {/* Footer */}
            <Footer />
        </div>
    );
}
