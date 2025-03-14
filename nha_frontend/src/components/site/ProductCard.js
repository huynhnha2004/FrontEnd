import React from "react";
import { API_CONFIG } from "../../config/api";
import { Link } from "react-router-dom";

export default function ProductCard({ product, label }) {
  var labelString = label ? label : "";

  return (
    <div className="bg-white rounded-lg shadow-lg hover:shadow-xl transition duration-300 transform hover:scale-105">
      <Link to={"/detail/" + product.id}>
        {/* Hình ảnh sản phẩm */}
        <figure className="p-4 flex justify-center">
          <img
            className="w-40 h-56 object-cover rounded-md"
            src={
              API_CONFIG.IMAGE_URL +
              product.attributes.image.data[0].attributes.url
            }
            alt={product.attributes.productName}
          />
        </figure>

        {/* Nội dung sản phẩm */}
        <div className="px-4 pb-4">
          <h2 className="text-lg font-semibold text-gray-900 h-16 truncate">
            <Link to={"/detail/" + product.id}>{product.attributes.productName}</Link>
          </h2>

          {/* Nhãn sản phẩm */}
          {labelString && (
            <span className="inline-block mt-2 px-3 py-1 text-xs font-bold text-white bg-red-500 rounded-full">
              {labelString}
            </span>
          )}

          {/* Giá sản phẩm */}
          <div className="flex justify-between items-center mt-3">
            <span className="text-xl font-bold text-green-600">
              {product.attributes.price}$
            </span>
          </div>

          {/* Nút thêm vào giỏ hàng */}
          <div className="mt-4">
          <button className="navbar bg-gradient-to-r from-purple-500 via-pink-500 to-red-500 text-white font-sans shadow-lg flex items-center gap-2 px-4 py-2 rounded-md">
  <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
    <path d="M16 11V5a3 3 0 00-6 0v6H8V5a5 5 0 1110 0v6h-2zM5 9V5a7 7 0 1114 0v4h2V5a9 9 0 10-18 0v4h2z" />
  </svg>
  Thêm vào giỏ
</button>

          </div>
        </div>
      </Link>
    </div>
  );
}
