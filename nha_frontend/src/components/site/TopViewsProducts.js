import React, { useEffect, useState } from 'react'
import ProductCard from './ProductCard'
import ProductApi from '../../services/ProductApi';
import Loading from '../Loading';

export default function TopViewsProducts() {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTopViewedProducts = async () => {
      try {
        const response = await ProductApi.getAll({
          sort: "sold:DESC",
          "pagination[start]": 0,
          "pagination[limit]": 4,
          "populate": "*",
        });
        console.log("Top 4 sản phẩm có lượt xem cao nhất:", response.data?.data);
        setProducts(response.data?.data || []);
      } catch (err) {
        setError("Lỗi khi tải sản phẩm.");
        console.error("Fetch top views product error:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchTopViewedProducts();
  }, []);

  return (
    <div className="mx-20 my-5">
      <h1 className="text-h1 font-sans font-bold tracking-wide"></h1>

      {loading && <Loading />}
      {error && <p className="text-red-500">{error}</p>}

      <div className="grid grid-cols-4 gap-4">
        {products.length > 0 ? (
          products.map((product) => <ProductCard key={product.id} product={product} />)
        ) : (
          <p className="text-gray-500">Không có sản phẩm nào.</p>
        )}
      </div>
    </div>
  );
}
