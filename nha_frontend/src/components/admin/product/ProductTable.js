import React, { useEffect, useState } from 'react';
import ProductItem from './ProductItem';
import ProductFilter from './ProductFilter';

export default function ProductTable({products,pagin,setReload,reload}) {
    var myview=products.map((product ,i)=><ProductItem  reload={reload} setReload={setReload} product={product}i={i+(pagin.page-1)*pagin.pageSize}/>)
  
    return (
      <div className="overflow-x-auto my-5 bg-gradient-to-r from-blue-200 to-blue-500 rounded-lg p-4">
    <table className="table-auto w-full text-center border-collapse border border-gray-300">
      {/* Head */}
      <thead>
        <tr className="bg-blue-600 text-white">
          <th className="px-4 py-2 border">STT</th>
          <th className="px-4 py-2 border">Product Name</th>
          <th className="px-4 py-2 border">Images</th>
          <th className="px-4 py-2 border">Price</th>
          <th className="px-4 py-2 border">Status</th>
          <th className="px-4 py-2 border">Action</th>
        
        </tr>
      </thead>
      <tbody className="bg-blue-100">
   {myview}
       
      </tbody>
    </table>
  </div>
  
    );
  }
  