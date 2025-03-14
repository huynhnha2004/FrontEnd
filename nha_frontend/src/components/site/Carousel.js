import React, { useEffect, useState } from "react";
import Loading from "../Loading";
import CarouselApi from "../../services/CarouselApi";
import { API_CONFIG } from "../../config/api";

export default function Carousel() {
  const [carousels, setCarousels] = useState([]); // Đảm bảo cú pháp đúng
  const [loading, setLoading] = useState(true); // Đảm bảo dấu ngoặc đúng
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchCarousels = async () => {
      try {
        const response = await CarouselApi.getAll({populate:'*'}
        );
        // Truy cập dữ liệu đúng cách
        // console.log("API Response:", response.data);  // Kiểm tra dữ liệu trong console
       
          setCarousels(response.data.data); // Lấy mảng danh mục từ response.data.data
      
      } catch (error) {
        setError("Có lỗi khi tải danh mục");
      } finally {
        setLoading(false);
      }
    };
    fetchCarousels();
  }, []); // Đảm bảo mảng phụ thuộc `useEffect` đúng cú pháp

  if (error) {
    return <p>{error}</p>; // Nếu có lỗi, hiển thị thông báo lỗi
  }
  var i=0;
  var myview=loading?<Loading/>:(
    carousels.map((carousel)=>
      {
        i++;
        return(
          <div id="slide1+i" key={carousel.id}className="carousel-item relative w-full h-80">
           <img src={API_CONFIG.IMAGE_URL + carousel.attributes.image.data.attributes.url}
           className="w-full" alt="HINH"/>
          <div className="absolute left-5 right-5 top-1/2 flex -translate-y-1/2 transform justify-between">
            <a href={"#slide"+parseInt(i+1)} className="btn btn-circle">❮</a>
            <a href={"#slide"+parseInt(i-1)} className="btn btn-circle">❯</a>
          </div>
        </div>
        )
      })
  )


  return (
    <div className="carousel w-full">
 
 {myview}
  </div>
  )
}
