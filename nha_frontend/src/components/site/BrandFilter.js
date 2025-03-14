import React, { useEffect, useState } from "react";
import Loading from "../Loading";
import BrandApi from "../../services/BrandApi";
import { API_CONFIG } from "../../config/api";
import { useLocation } from "react-router-dom";


export default function BrandFilter({brandName, setBrandName}) {
  const [brands, setBrands] = useState([]); // Đảm bảo cú pháp đúng
  const [loading, setLoading] = useState(true); // Đảm bảo dấu ngoặc đúng
  const [error, setError] = useState(null);
  var location=useLocation();
  var path=location.pathname;
  useEffect(() => {
    const fetchBrands = async () => {
      try {
        const response = await BrandApi.getAll({populate:'*'});
        // Truy cập dữ liệu đúng cách
        // console.log("API Response:", response.data);  // Kiểm tra dữ liệu trong console
      
          setBrands(response.data.data); // Lấy mảng danh mục từ response.data.data
       
      } catch (error) {
        setError("Có lỗi khi tải danh mục");
      } finally {
        setLoading(false);
      }
    };
    fetchBrands();
  }, []); // Đảm bảo mảng phụ thuộc `useEffect` đúng cú pháp

  if (error) {
    return <p>{error}</p>; // Nếu có lỗi, hiển thị thông báo lỗi
  }

  const myview = loading ? (
    <Loading />
  ) : (
    brands.length > 0 ? (
        brands.map((brand) => (
              <li key={brand.id}onClick={(e)=>{ if(path!='/product')window.location.href='/product'; else setBrandName(brand.attributes.brandName)}}> <a>
                <img className="w-9 h-9" src={API_CONFIG.IMAGE_URL+brand.attributes.logo.data.attributes.url}/>
               {brand.attributes.brandName}</a> {/* Hiển thị tên danh mục */}
              </li>
            ))
          ) : (
            <p>Không có danh mục nào để hiển thị</p>  
          )
        );
  return (
    <div className="my-2">
      <ul className="menu bg-base-200 rounded-box w-56">
        <li className="menu-title"onClick={()=>setBrandName(null)}>All Brands</li>  {/* Change title from BrandApi Brand */}
        {myview}
      </ul>
    </div>
  );
}
