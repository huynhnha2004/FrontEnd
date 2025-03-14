import React, { useState } from "react";
import ProductAction from "./ProductAction";
import { API_CONFIG } from "../../../config/api";
import ProductApi from "../../../services/ProductApi";


export default function ProductItem({ product, i, setReload, reload }) {
  const [message, setMessage] = useState("");

  if (!product || !product.attributes) {
    return null; // Không render nếu product không tồn tại
  }

  const handleTogglePublish = async () => {
    try {
      await ProductApi.update(product.id, {
        publishedAt: product.attributes.publishedAt ? null : Date.now()
      });
      setReload(reload === 1 ? 0 : 1);
    } catch (error) {
      setMessage("Error toggle publish");
    }
  };

  // Kiểm tra ảnh sản phẩm
  const imageUrl =
    product.attributes.image?.data?.[0]?.attributes?.url
      ? API_CONFIG.IMAGE_URL + product.attributes.image.data[0].attributes.url
      : "https://via.placeholder.com/100"; // Ảnh mặc định nếu không có ảnh

  return (
    <tr>
      <td>{i}</td>
      <td>{product.attributes.productName}</td>
      <td>
        <img style={{ width: 100, height: 100 }} src={imageUrl} alt="giay" />
      </td>
      <td>{product.attributes.price}$</td>
      <td>
        <span className="btn" onClick={handleTogglePublish}>
          {product.attributes.publishedAt ? "unpublish" : "publish"}
        </span>
        {reload === 0 ? message : ""}
      </td>
      <td>
        <ProductAction product={product} reload={reload} setReload={setReload} />
      </td>
    </tr>
  );
}