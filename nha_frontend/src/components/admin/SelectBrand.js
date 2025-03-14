import React, { useEffect, useState } from "react";
import BrandApi from "../../services/BrandApi";
import Loading from "../Loading";

export default function SelectBrand({ brand, setBrand }) {
  const [brands, setBrands] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchBrands = async () => {
      try {
        const response = await BrandApi.getAll();
       
        const data = response?.data?.data || []; // Đảm bảo data không null
        setBrands(data);
      } catch (e) {
       
      } finally {
        setLoading(false);
      }
    };
    fetchBrands();
  }, []);

  return (
    <select
      className="w-full p-2 border border-blue-400 rounded-lg shadow-sm bg-blue-50 text-blue-900 focus:ring-2 focus:ring-blue-500 focus:outline-none"
      value={brand || ""}
      onChange={(e) => setBrand(e.target.value)}
    >
      {loading ? (
        <Loading />
      ) : (
        brands.map((brand) => (
          <option key={brand.id} value={brand.id}>
            {brand.attributes.brandName}
          </option>
        ))
      )}
    </select>
  );
}
