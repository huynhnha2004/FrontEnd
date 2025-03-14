import React, { useEffect, useState } from 'react';
import CategoryApi from '../../services/CategoryApi';
import Loading from "../Loading";
export default function SelectCategory({category,setCategory}) {
      
const [categories, setCategories] = useState([]);
const [loading, setLoading] = useState(true);

useEffect(() => {
    const fetchCategories = async () => {
        try {
            const response = await CategoryApi.getAll();
           
            setCategories(response.data.data);
        } catch (e) {
          
        } finally {
            setLoading(false); // Đảm bảo loading được cập nhật dù có lỗi hay không
        }
    };
    fetchCategories();
}, []);
var myview =loading?<Loading/>:categories.map((category)=>
(
    <option value={category.id}>{category.attributes.categoryName}</option>
))
  return (
    <select className="w-full p-2 border border-blue-400 rounded-lg shadow-sm bg-blue-50 text-blue-900 focus:ring-2 focus:ring-blue-500 focus:outline-none"
    value={category} onChange={(e) => setCategory(e.target.value)}
    >
        
   {myview}
  </select>
  )
}
