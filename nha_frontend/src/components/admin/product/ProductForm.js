import React, { useEffect, useState } from "react";
import ReactQuill from "react-quill-new";
import "react-quill-new/dist/quill.snow.css";
import SelectCategory from "../SelectCategory";
import SelectBrand from "../SelectBrand";
import ProductApi from "../../../services/ProductApi";
import Gallery from "../Gallery";
import UploadApi from "../../../services/admin/UploadApi";
import { API_CONFIG } from "../../../config/api";

export default function ProductForm() {
  const [productName, setProductName] = useState("");
  const [description, setDescription] = useState("");
  const [price, setPrice] = useState(""); // Lúc đầu là chuỗi, chuyển thành số trước khi gửi
  const [image, setImage] = useState([]); // Mặc định mảng rỗng, không dùng [1,2,3,4]
  const [category, setCategory] = useState("");
  const [brand, setBrand] = useState("");
  const [status, setStatus] = useState("");
  const [feature, setFeature] = useState("");
  const [ingredient, setIngredient] = useState("");
  const [instruction, setInstruction] = useState("");
  const [summary, setSummary] = useState("");
  const [tag, setTag] = useState("");
  const [message, setMessage] = useState("");
  const [showGallery, setShowGallery] = useState(false);

  const [imageData, setImageData] = useState([]);

  useEffect(() => {
    const fetchImages = async () => {
      try {
        var params = {
          "filters[id][$in]": image,
        };
        var response = await UploadApi.getAllFiles(params);
        setImageData(response.data);
      
      } catch (e) {
        console.log("Error", e);
      }
    };

    fetchImages();
  }, [image]);

  const handleSubmit = async (e) => {
    e.preventDefault();

    // Kiểm tra các trường bắt buộc
    if (
      !productName ||
      !description ||
      !price ||
      !category ||
      !brand ||
      !status
    ) {
      setMessage("Vui lòng điền đầy đủ thông tin sản phẩm!");
      setTimeout(() => setMessage(""), 5000);
      return;
    }

    // Chuyển `price` thành số
    const priceValue = Number(price);
    if (isNaN(priceValue) || priceValue <= 0) {
      setMessage("Giá sản phẩm phải là một số hợp lệ!");
      setTimeout(() => setMessage(""), 5000);
      return;
    }
    // Tạo dữ liệu sản phẩm
    const productData = {
      productName,
      description,
      price: priceValue, // Giá trị số
      image,
      category,
      brand,
      status,
      feature,
      ingredient,
      instruction,
      summary,
      tag,
    };

    console.log("Dữ liệu gửi lên API:", productData);

    try {
      const response = await ProductApi.create(productData);
      console.log("Sản phẩm đã được thêm", response.data);
      setMessage("Sản phẩm đã được thêm thành công!");
      setTimeout(() => setMessage(""), 5000);
    } catch (error) {
      console.error("Có lỗi xảy ra khi thêm sản phẩm", error);

      if (error.response) {
        console.log("Lỗi trả về từ server:", error.response.data);
        setMessage(
          `Lỗi: ${error.response.data.message || "Không rõ nguyên nhân"}`
        );
      } else {
        setMessage("Có lỗi xảy ra. Vui lòng thử lại!");
      }
      setTimeout(() => setMessage(""), 5000);
    }
  };
  var myview =
    image.length == 0
      ? ""
      : imageData.map((img) => (
          <div className="relative bg-white p-1 rounded-lg shadow-md w-24 border border-gray-200">
            <img
              src={API_CONFIG.IMAGE_URL + img.url}
              alt="Tên hình"
              className="w-full h-20 object-cover rounded-md"
            />
            <p className="text-center text-sm mt-2">{img.name}</p>
            
            <button

              data-id={img.id}
              className="absolute top-1 right-1 text-white rounded-full p-1 hover:bg-red-700 text-xs"
            >
              
            </button>
          </div>
        ));
  return (
    <div className="space-y-6 bg-blue-100 p-8 rounded-lg shadow-2xl max-w-4xl mx-auto border border-blue-300">
      <h2 className="text-xl font-bold text-blue-700">Thêm Sản Phẩm</h2>
      {message && (
        <div className="bg-yellow-200 text-yellow-800 p-4 rounded">
          {message}
        </div>
      )}
      <form method="POST" onSubmit={handleSubmit}>
        <div className="grid grid-cols-2 gap-6">
          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">
              Tên sản phẩm
            </label>
            <input
              value={productName}
              type="text"
              className="w-full p-2 border border-blue-400 rounded-lg shadow-sm bg-blue-50 text-blue-900 focus:ring-2 focus:ring-blue-500 focus:outline-none"
              placeholder="Nhập tên sản phẩm"
              required
              onChange={(e) => setProductName(e.target.value)}
            />
          </div>

          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">
              Giá
            </label>
            <input
              type="number"
              className="w-full p-2 border border-blue-400 rounded-lg shadow-sm bg-blue-50 text-blue-900 focus:ring-2 focus:ring-blue-500 focus:outline-none"
              placeholder="Nhập giá"
              required
              value={price}
              onChange={(e) => setPrice(e.target.value)}
            />
          </div>
        </div>

        <div className="grid grid-cols-2 gap-6">
          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">
              Thương hiệu
            </label>
            <SelectBrand required setBrand={setBrand} brand={brand} />
          </div>

          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">
              Tag
            </label>
            <input
              type="text"
              className="w-full p-2 border border-blue-400 rounded-lg shadow-sm bg-blue-50 text-blue-900 focus:ring-2 focus:ring-blue-500 focus:outline-none"
              placeholder="Nhập tag"
              value={tag}
              onChange={(e) => setTag(e.target.value)}
            />
          </div>
        </div>

        <div className="grid grid-cols-2 gap-6">
          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">
              Thể loại
            </label>
            <SelectCategory
              required
              setCategory={setCategory}
              category={category}
            />
          </div>
        </div>

        <div className="grid grid-cols-1 gap-6">
          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">
              Mô tả
            </label>
            <ReactQuill
              value={description}
              onChange={setDescription}
              theme="snow"
              required
            />
          </div>
     
          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">Tính năng</label>
            <ReactQuill value={feature} onChange={setFeature} theme="snow" required />
          </div>
          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">Nguyên liệu</label>
            <ReactQuill value={ingredient} onChange={setIngredient} theme="snow" required />
          </div>
        </div>
        <div>
          <label className="block text-sm font-medium text-blue-600 mb-1">Hướng dẫn sử dụng</label>
          <ReactQuill value={instruction} onChange={setInstruction} theme="snow" required />
        </div>
     

        <div>
          <label
            htmlFor="summary"
            className="block text-sm font-medium text-blue-600 mb-1"
          >
            Tóm tắt
          </label>
          <textarea
            id="summary"
            name="summary"
            required
            className="w-full p-2 border border-blue-400 rounded-lg shadow-sm bg-blue-50 text-blue-900 focus:ring-2 focus:ring-blue-500 focus:outline-none"
            value={summary}
            onChange={(e) => setSummary(e.target.value)}
            rows="4"
            placeholder="Nhập tóm tắt sản phẩm..."
          ></textarea>
        </div>

        <div className="grid grid-cols-2 gap-6">
          <div>
            <label className="block text-sm font-medium text-blue-600 mb-1">
              Trạng thái
            </label>
            <select
              className="w-full p-2 border border-blue-400 rounded-lg shadow-sm bg-blue-50 text-blue-900 focus:ring-2 focus:ring-blue-500 focus:outline-none"
              required
              value={status}
              onChange={(e) => setStatus(e.target.value)}
            >
              <option value="">Chọn trạng thái</option>
              <option value="In stock">In Stock</option>
              <option value="Out Stock">Out of Stock</option>
              <option value="hidden">Ẩn</option>
            </select>
          </div>
          <div className="flex justify-end mt-6"></div>
        </div>

        <div className="flex justify-end mt-4">
          <button
            className="bg-gradient-to-r from-blue-500 to-blue-600 text-white py-2 px-6 rounded-lg shadow-md hover:from-blue-600 hover:to-blue-700 transition-all"
            type="submit"
          >
            Thêm Sản Phẩm
          </button>
        </div>
      </form>
      <div className="flex">{myview}</div>
      <div className="flex justify-end mt-4">
       
      <button
      
        className="bg-gradient-to-r from-blue-500 to-blue-400 text-white py-2 px-6 rounded-xl shadow-lg hover:from-blue-600 hover:to-blue-500 transition-all transform hover:scale-105 flex items-center gap-2"
        type="button"
        onClick={() => setShowGallery(!showGallery)} // Cập nhật trạng thái
      >
        📷 <span className="font-semibold">Chọn Hình Ảnh</span>
      </button>
</div>
      {showGallery && (
        <div className="mt-4 p-4 border border-gray-300 rounded-lg shadow-md">
          <div className="flex justify-end">
            <button
              onClick={() => setShowGallery(false)}
              className="text-red-500 hover:text-red-700 transition-all"
            >
              ❌
            </button>
          </div>
          <Gallery setImage={setImage} image={image} />
        </div>
      )}
    </div>
  );
}
