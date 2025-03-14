import React, { useEffect, useState } from "react";
import ProductCard from "./ProductCard";
import Loading from "../Loading";
import ProductApi from "../../services/ProductApi";

export default function NaturalProducts() {
  const [products, setProducts] = useState([]); // Đảm bảo cú pháp đúng
  const [loading, setLoading] = useState(true); // Đảm bảo dấu ngoặc đúng
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        const response = await ProductApi.getAll({
          sort: "sold:DESC",
          "pagination [start]": 6,
          "pagination [limit]": 4,
          populate: "*",
          'filter[tag][$contains]':'natural'
        });
        // Truy cập dữ liệu đúng cách
        // console.log("API Response:", response.data); // Kiểm tra dữ liệu trong console
      
          setProducts(response.data.data); // Lấy mảng danh mục từ response.data.data
      } catch (error) {
        setError("Có lỗi khi tải danh mục");
      } finally {
        setLoading(false);
      }
    };
    fetchProducts();
  }, []); // Đảm bảo mảng phụ thuộc `useEffect` đúng cú pháp

  if (error) {
    return <p>{error}</p>; // Nếu có lỗi, hiển thị thông báo lỗi
  }
  var myview = loading ? (
    <Loading />
  ) : (
    products.map((product) => {
      return <ProductCard product={product} key={product.id} label='naural'/>
    })
  );
  return (
    <div className="mx-20 my-5">
      <h1 className="text-h1 font-san font-bold tracking-wide"> </h1>
      <div className="grid grid-cols-4 gap-4">{myview}</div>
    </div>
  );

  return (
    <div className="mx-20 my-5">
      <h1 className="text-h1 font-san font-bold tracking-wide">
        Natural Products
      </h1>
      <div className="grid grid-cols-4 gap-4">
        <ProductCard />
        <ProductCard />
        <ProductCard />
        <ProductCard />
      </div>
    </div>
  );
}
