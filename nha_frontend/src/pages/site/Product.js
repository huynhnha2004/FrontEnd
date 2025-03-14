import React, { useEffect, useState } from 'react';
import Navbar from '../../components/site/Navbar';
import Carousel from '../../components/site/Carousel';
import ProductFilter from '../../components/site/ProductFilter';
import Search from '../../components/site/Search';
import ProductsList from '../../components/site/ProductsList';
import Footer from '../../components/site/Footer';
import ProductApi from '../../services/ProductApi';
import Loading from '../../components/Loading';
import Pagination from '../../components/site/Pagination';

export default function Product() {
    const [products, setProducts] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [pagin, setPagin] = useState({ page: 1, pageCount: 1 });
    const [minPrice, setMinPrice] = useState(null);
    const [maxPrice, setMaxPrice] = useState(null);
    const [categoryName, setCategoryName] = useState(null);
    const [brandName, setBrandName] = useState(null);
    const [searchKey, setSearchKey] = useState(null);
    const [page, setPage] = useState(1);

    useEffect(() => {
        const fetchProducts = async () => {
            try {
                var params = {
                    "pagination[page]": page, // Sử dụng trang hiện tại
                    "pagination[pageSize]": 12,
                    "populate": "*",
                    "filters[price][$gte]": minPrice,
                    "filters[price][$lte]": maxPrice, // Đã sửa lỗi ở đây
                    "filters[category][$categoryName][$eq]": categoryName,
                };

                const response = await ProductApi.getAll(params);
                setProducts(response.data.data);
                setPagin(response.data.meta.pagination);
            } catch (error) {
                setError('Có lỗi khi tải sản phẩm');
            } finally {
                setLoading(false);
            }
        };

        fetchProducts();
    }, [categoryName, brandName, minPrice, maxPrice, searchKey, page]); 

    if (error) {
        return <p>{error}</p>;
    }

    const myview = loading ? <Loading /> : <ProductsList products={products} />;
    const myview1 = loading ? <Loading /> : <Pagination pagin={pagin} setPage={setPage} />; 

    return (
        <div className='bg-gray-50'>
            <Navbar />
            <Carousel />
            <div className="grid md:grid-cols-4 sm:grid-cols-3 gap-2 mx-20 ">
                <div className="col-span-1">
                    <ProductFilter
                        categoryName={categoryName}
                        brandName={brandName}
                        maxPrice={maxPrice}
                        minPrice={minPrice}
                        setMaxPrice={setMaxPrice}
                        setMinPrice={setMinPrice}
                        setCategoryName={setCategoryName}
                        setBrandName={setBrandName}
                    />
                </div>
                <div className="md:col-span-3 sm:col-span-2 pt-10 ml-5">
                    <div className="w-[200px]">
                        <Search searchKey={searchKey} setSearchKey={setSearchKey} />
                    </div>
                    {myview}
                    {myview1}
                </div>
            </div>
            <Footer />
        </div>
    );
}
