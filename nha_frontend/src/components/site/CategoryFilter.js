import React, { useEffect, useState } from "react";
import Loading from "../Loading";
import CategoryApi from "../../services/CategoryApi";
import { API_CONFIG } from "../../config/api";
import { useLocation } from "react-router-dom";

export default function CategoryFilter({categoryName, setCategoryName}) {
  const [categories, setCategories] = useState([]); // Đảm bảo cú pháp đúng
  const [loading, setLoading] = useState(true); // Đảm bảo dấu ngoặc đúng
  const [error, setError] = useState(null);
var location=useLocation();
var path=location.pathname;
  useEffect(() => {
    const fetchCategories = async () => {
      try {
        const response = await CategoryApi.getAll({populate:'*'});
        // Truy cập dữ liệu đúng cách
        // console.log("API Response:", response.data);  // Kiểm tra dữ liệu trong console
      
          setCategories(response.data.data); // Lấy mảng danh mục từ response.data.data
       
      } catch (error) {
        setError("Có lỗi khi tải danh mục");
      } finally {
        setLoading(false);
      }
    };
    fetchCategories();
  }, []); // Đảm bảo mảng phụ thuộc `useEffect` đúng cú pháp

  if (error) {
    return <p>{error}</p>; // Nếu có lỗi, hiển thị thông báo lỗi
  }

  const myview = loading ? (
    <Loading />
  ) : (
    categories.length > 0 ? (
      categories.map((category) => (
        <li key={category.id}onClick={(e)=>{ if(path!='/product')window.location.href='/product'; else setCategoryName(category.attributes.categoryName)}}> <a>
          <img className="w-9 h-9" src={API_CONFIG.IMAGE_URL+category.attributes.icon.data.attributes.url}/>
         {category.attributes.categoryName}</a> {/* Hiển thị tên danh mục */}
        </li>
      ))
    ) : (
      <p>Không có danh mục nào để hiển thị</p>  // Khi không có danh mục
    )
  );

  return (
    <div className="my-2">
      <ul className="menu bg-base-200 rounded-box w-56">
        <li className="menu-title"onClick={()=>setCategoryName(null)}>All Categorys</li>  {/* Change title from BrandApi Brand */}
        {myview}
      </ul>
    </div>
  );
}
