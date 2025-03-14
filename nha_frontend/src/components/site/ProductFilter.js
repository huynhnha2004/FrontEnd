import React from 'react';
import CategoryFilter from './CategoryFilter';
import BrandFilter from './BrandFilter';
import PriceRangeFilter from './PriceRangeFilter';

export default function ProductFilter({ categoryName, brandName, minPrice, maxPrice, setMinPrice, setMaxPrice, setCategoryName, setBrandName }) {
  return (
    <div className="my-10 ">
      <CategoryFilter
        categoryName={categoryName}
        setCategoryName={setCategoryName}
      />
      <BrandFilter
        brandName={brandName}
        setBrandName={setBrandName}
      />
      <PriceRangeFilter
        maxPrice={maxPrice}
        minPrice={minPrice}
        setMaxPrice={setMaxPrice}
        setMinPrice={setMinPrice}
      />
    </div>
  );
}
