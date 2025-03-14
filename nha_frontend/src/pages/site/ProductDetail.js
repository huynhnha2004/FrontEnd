import React, { useEffect, useState } from "react";
import Navbar from "../../components/site/Navbar";
import Carousel from "../../components/site/Carousel";
import Footer from "../../components/site/Footer";
import ProductDetailCard from "../../components/site/ProductDetailCard";
import ProductFilter from "../../components/site/ProductFilter";
import RelatedProduct from "../../components/site/RelatedProduct";
import { useParams } from "react-router-dom";
import ProductApi from "../../services/ProductApi";
import Loading from "../../components/Loading";

export default function ProductDetail() {
  const { id } = useParams();
  const [product, setProduct] = useState(null); // Đảm bảo cú pháp đúng
  const [loading, setLoading] = useState(true); // Đảm bảo dấu ngoặc đúng
  const [error, setError] = useState(null);
  const [tag, setTag] = useState(null);

  useEffect(() => {
    const fetchProduct = async () => {
      try {
        const response = await ProductApi.get(id, {
          
          populate: "*",
          
        });
        // Truy cập dữ liệu đúng cách
         console.log("API Response:", response.data); // Kiểm tra dữ liệu trong console
          setProduct(response.data.data); // Lấy mảng danh mục từ response.data.data
          setTag((response.data.data.attributes.tag).split(',')); 
      } catch (error) {
        setError("Có lỗi khi tải danh mục");
      } finally {
        setLoading(false);
      }
    };
    fetchProduct();
  }, [id]); // Đảm bảo mảng phụ thuộc `useEffect` đúng cú pháp

  if (error) {
    return <p>{error}</p>; // Nếu có lỗi, hiển thị thông báo lỗi
    
  }
  var myview = loading ? <Loading /> : <ProductDetailCard product={product} />;
  var myview2 = loading ? <Loading /> : <RelatedProduct tag={tag} />;
  return (
    <div>
      <Navbar />
      <Carousel />
      <div className="grid md:grid-cols-4 sm:grid-cols-2 gap-2 mx-20 pt-10">
        {/* Sidebar filter */}
        <div className="col-span-1">
          <ProductFilter />
        </div>

        {/* Main content */}
        <div className="md:col-span-3 sm:col-span-2">
          {myview}
          {myview2}
        </div>
      </div>
      <Footer />
    </div>
  );
}
