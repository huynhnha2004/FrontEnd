import React from 'react';
import ProductCard from './ProductCard';

export default function ProductList({ products }) {
  return (
    <div className="my-10">
      <div className="grid md:grid-cols-4 sm:grid-cols-2 gap-3 mt-20 pb-10">
        {products.length > 0 ? (
          products.map((p) => <ProductCard key={p.id} product={p} />)
        ) : (
          <p className="text-gray-500 col-span-4 text-center">Không có sản phẩm nào.</p>
        )}
      </div>
    </div>
  );
}
