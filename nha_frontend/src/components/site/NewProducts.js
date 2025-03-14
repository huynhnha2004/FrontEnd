import React, { useEffect, useState } from 'react';
import ProductCard from './ProductCard';
import ProductApi from '../../services/ProductApi';
import Loading from '../Loading';

export default function NewProducts() {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        const response = await ProductApi.getAll({
          sort: "createdAt:DESC", // Sắp xếp theo ngày tạo giảm dần
          "pagination[start]": 0,
          "pagination[limit]": 4, // Lấy 4 sản phẩm mới nhất
          "populate": "*", // Lấy tất cả thông tin cần thiết
        });
        setProducts(response.data.data);
      } catch (error) {
        setError('Có lỗi khi tải sản phẩm mới');
      } finally {
        setLoading(false);
      }
    };

    fetchProducts();
  }, []);

  if (error) {
    return <p>{error}</p>;
  }

  const myview = loading ? (
    <Loading />
  ) : (
    products.map((product) => (
      <ProductCard product={product} key={product.id} label="New" />
    ))
  );

  return (
    <div className="mx-20 my-5">
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-6 mt-8">
        {myview}
      </div>
    </div>
  );
}
