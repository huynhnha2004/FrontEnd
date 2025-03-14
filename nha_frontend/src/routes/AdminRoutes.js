import { Route, Routes } from 'react-router-dom';  
import Dashboard from '../pages/admin/Dashboard'; 
import AdminLogin from '../pages/admin/AdminLogin';


import ProductList from '../pages/admin/products/ProductList';
import ProductAdd from '../pages/admin/products/ProductAdd';
import ProductEdit from '../pages/admin/products/ProductEdit';
import ProductDetail from '../pages/admin/products/ProductDetail';
import ProductTrash from '../pages/admin/products/ProductTrash';


import CategoryList from '../pages/admin/Categorys/CategoryList';  
import CategoryAdd from '../pages/admin/Categorys/CategoryAdd';  
import CategoryEdit from '../pages/admin/Categorys/CategoryEdit';  
import CategoryDetail from '../pages/admin/Categorys/CategoryDetail';
import CategoryTrash from '../pages/admin/Categorys/CategoryTrash';

import BrandList from '../pages/admin/Brand/BrandList';
import BrandAdd from '../pages/admin/Brand/BrandAdd';
import BrandEdit from '../pages/admin/Brand/BrandEdit';  
import BrandDetail from '../pages/admin/Brand/BrandDetail';
import BrandTrash from '../pages/admin/Brand/BrandTrash';  
import { isAdminAuthenticated } from '../utils/auth';
import GalleryPage from '../pages/admin/GalleryPage';

export default function AdminRoutes() {  
    return (  
        
        <Routes>  
            {/*   Product     */}
            <Route path="/" element={<Dashboard/>} /> {/* Trang dashboard admin */}  
            <Route path="/products" element={<ProductList />} /> {/* Danh sách sản phẩm */}  
            <Route path="/products/add" element={<ProductAdd />} /> {/* Thêm sản phẩm mới */}  
            <Route path="/products/edit/:id" element={<ProductEdit />} /> {/* Chỉnh sửa sản phẩm */}  
            <Route path="/products/detail/:id" element={<ProductDetail />} /> {/* Chi tiết sản phẩm */}  
            <Route path="/products/trash" element={<ProductTrash />} /> {/* thung rac */}  
            <Route path="/login" element={<AdminLogin/>} /> {/* login admin */}
            


            {/*    Category     */}
            <Route path="/" element={<Dashboard />} /> {/* Trang dashboard admin */}  
            <Route path="/Categorys" element={<CategoryList />} /> {/* Danh sách sản phẩm */}  
            <Route path="/Categorys/add" element={<CategoryAdd />} /> {/* Thêm sản phẩm mới */}  
            <Route path="/Categorys/edit/:id" element={<CategoryEdit />} /> {/* Chỉnh sửa sản phẩm */}  
            <Route path="/Categorys/detail/:id" element={<CategoryDetail />} /> {/* Chi tiết sản phẩm */}  
            <Route path="/Categorys/trash" element={<CategoryTrash />} /> {/* thung rac */}  
            <Route path="/login" element={<AdminLogin/>} /> {/* login admin */}
            {/*     Brand   */}
            <Route path="/" element={<Dashboard />} /> {/* Trang dashboard admin */}  
            <Route path="/Brands" element={<BrandList />} /> {/* Danh sách sản phẩm */}  
            <Route path="/Brands/add" element={<BrandAdd />} /> {/* Thêm sản phẩm mới */}  
            <Route path="/Brands/edit/:id" element={<BrandEdit />} /> {/* Chỉnh sửa sản phẩm */}  
            <Route path="/Brands/detail/:id" element={<BrandDetail />} /> {/* Chi tiết sản phẩm */}  
            <Route path="/Brands/trash" element={<BrandTrash />} /> {/* thung rac */}  
            <Route path="/login" element={<AdminLogin/>} /> {/* login admin */}




            
            <Route path="/" element={isAdminAuthenticated()?<Dashboard />:<AdminLogin />} />
      <Route path="/products" element={isAdminAuthenticated()?<ProductList />:<AdminLogin />} />
      <Route path="/products/add" element={isAdminAuthenticated()?<ProductAdd />:<AdminLogin />} />
      <Route path="/products/edit/:id" element={isAdminAuthenticated()?<ProductEdit />:<AdminLogin />} />
      <Route path="/products/detail/:id" element={isAdminAuthenticated()?<ProductDetail />:<AdminLogin />} />
     
      <Route path="/login" element={<AdminLogin />} />

      <Route path="/gallery" element={isAdminAuthenticated()?<GalleryPage />:<AdminLogin />} />
            



        </Routes>  
        
        
    );  
};  