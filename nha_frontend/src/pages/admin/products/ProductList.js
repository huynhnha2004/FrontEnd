import React, { useEffect, useState } from 'react';
import Navbar from '../../../components/admin/Navbar';
import Menu from '../../../components/admin/Menu';
import Footer from '../../../components/admin/Footer';
import ProductTable from '../../../components/admin/product/ProductTable';
import ProductApi from '../../../services/ProductApi';
import Loading from '../../../components/Loading';
import Pagination from "../../../components/site/Pagination";
import ProductFilter from '../../../components/admin/product/ProductFilter';
export default function ProductList() {
  const [products, setProducts] = useState([]); // Đảm bảo cú pháp đúng
  const [loading, setLoading] = useState(true); // Đảm bảo dấu ngoặc đúng
  const [error, setError] = useState(null);
  const [pagin, setPagin] = useState(null);
  const [minPrice, setMinPrice] = useState(null);
  const [maxPrice, setMaxPrice] = useState(null);
  const [categoryName, setCategoryName] = useState(null);
  const [brandName, setBrandName] = useState(null);
  const [searchKey,setSearchkey]=useState(null);
  const [status,setStatus]=useState(null);
  const [page,setPage]=useState(1);
  const [sortOrder, setSortOrder] = useState(null); 
  const [reload, setReload] = useState(0); 
  const [viewOption, setViewOption] = useState('live'); 
  useEffect(() => {
    const fetchProducts = async () => {
      try {
        var params = {
          // sort: "sold:DESC",
          "pagination [page]": 1,
          "pagination [pageSize]": 12,
          populate: "*",
          "filters[price][$gte]": minPrice,
          "filters[price][$lte]": maxPrice,
          "filters[category][categoryName][$eq]": categoryName,
          "filters[brand]][brandName][$eq]": brandName,
          "filters[productName][$contains]": searchKey,
          "filters[status][$eq]": status,
          'publicationState':viewOption,
          sort: sortOrder ? `price:${sortOrder}` : undefined,
        };
        const response = await ProductApi.getAll(params);
        // Truy cập dữ liệu đúng cách
        setProducts(response.data.data); // Lấy mảng danh mục từ response.data.data
        setPagin(response.data.meta.pagination);
      } catch (error) {
        setError("Có lỗi khi tải sản phẩm");
      } finally {
        setLoading(false);
      }
    };

    fetchProducts();
  }, [viewOption, reload,page,minPrice, maxPrice, categoryName,brandName,searchKey,status, sortOrder]); // Đảm bảo mảng phụ thuộc `useEffect` đúng cú pháp

  if (error) {
    return <p>{error}</p>; // Nếu có lỗi, hiển thị thông báo lỗi
  }
  console.log = ("pagin", pagin);
  var myview = loading ? <Loading /> : <ProductTable reload={reload} setReload={setReload} products={products} pagin={pagin}/>;
  var myview1 = loading ? <Loading /> : <Pagination pagin={pagin} setPage={setPage}/>;
    return (
        <div className="min-h-screen bg-gray-100 flex flex-col">
            {/* Header */}
            <Navbar />
            
            {/* Content */}
            <div className="flex flex-1">
                {/* Sidebar Menu */}
                <div className="hidden lg:block w-1/4 bg-white shadow-md p-4">
                    <Menu />
                </div>

                {/* Main Content */}
                <div className="w-full lg:w-3/4 bg-white shadow-md p-6 mx-auto">
                    <h1 className="text-3xl font-bold mb-6 text-gray-800">Product List</h1>
                    <ProductFilter setViewOption={setViewOption} setSearchkey={setSearchkey} setCategoryName={setCategoryName} setStatus={setStatus}  setSortOrder={setSortOrder}/>
                  {myview}
                  {myview1}
                </div>
            </div>

            {/* Footer */}
            <Footer />
        </div>
    );
}
