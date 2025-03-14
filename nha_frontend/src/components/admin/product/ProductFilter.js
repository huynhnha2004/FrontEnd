import React, { useEffect, useState } from 'react';
import CategoryApi from '../../../services/CategoryApi';
import Loading from '../../Loading';

export default function ProductFilter({setViewOption,setSearchkey, setCategoryName ,setStatus,setSortOrder}) {
   const [categories, setCategories] = useState([]); // Đảm bảo cú pháp đúng
    const [loading, setLoading] = useState(true); // Đảm bảo dấu ngoặc đúng
    const [error,setError] = useState(null);
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
    var myCategoryView=loading?<Loading/>:categories.map((category)=><option value={category.attributes.categoryName}>{category.attributes.categoryName}</option>)
    return (
    <div className="my-5 flex flex-wrap gap-4 items-center bg-white p-4 rounded-lg shadow-md">
      <input
        type="text"
        className="w-56 px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-blue-300 focus:outline-none transition-all"
        placeholder="🔍 Search product name"onChange={(e)=>{setSearchkey(e.target.value)}}
      />
      
      <select className="px-4 py-2 border border-gray-300 rounded-md shadow-sm bg-white focus:ring focus:ring-blue-300 focus:outline-none transition-all" onChange={(e) => setCategoryName(e.target.value)}>
        <option value="">📂 Select Category</option>
       {myCategoryView}
      </select>
      
      <select className="px-4 py-2 border border-gray-300 rounded-md shadow-sm bg-white focus:ring focus:ring-blue-300 focus:outline-none transition-all"
      onChange={(e)=>{
          if(e.target.value=='')setStatus(null);
          else
          setStatus(e.target.value)}}>
        <option value="">📦 All Products</option>
        <option value="In stock">In Stock</option>
        <option value="Out Stock">Out of Stock</option>
      </select>
      
      <select className="px-4 py-2 border border-gray-300 rounded-md shadow-sm bg-white focus:ring focus:ring-blue-300 focus:outline-none transition-all"
      onChange={(e) => setSortOrder(e.target.value)}
      >
       
        <option value="">🔽 Sort</option>
        <option value="asc">ASC</option>
        <option value="desc">DESC</option>
      </select>
      <select className="px-4 py-2 border border-gray-300 rounded-md shadow-sm bg-white focus:ring focus:ring-blue-300 focus:outline-none transition-all"
        onChange={(e) => setViewOption(e.target.value)}
      >
        <option value=""disabled>📢View Option</option>
        <option value="live">Live</option>
        <option value="preview">Preview</option>
      </select>
      
      <button className="px-6 py-2 bg-blue-500 text-white font-semibold rounded-md shadow-md hover:bg-blue-600 transition-all">
        🔍 Filter
      </button>
    </div>
  );
}
