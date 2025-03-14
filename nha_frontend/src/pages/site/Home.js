import React from 'react';
import Navbar from '../../components/site/Navbar';
import Carousel from '../../components/site/Carousel';
import Footer from '../../components/site/Footer';
import NewProducts from '../../components/site/NewProducts';
import TopViewsProducts from '../../components/site/TopViewsProducts';
import NaturalProducts from '../../components/site/NaturalProducts';
import BestSellerProducts from '../../components/site/BestSellerProducts';

export default function Home() {
  return (
    <div>
      <Navbar />
      <Carousel />
      <section className="px-4 py-8 bg-gray-10">
      <h2 className="text-3xl font-semibold text-center text-pink-600 mb-6 ">
        <i className="fas fa-hand-wave mr-3"></i>
        Chào mừng bạn đến với cửa hàng chúng tôi
      </h2>
    </section>


      <section className="px-4 py-8 bg-gray-10">
        <h2 className="text-3xl font-semibold text-center text-green-700  mb-6">New Arrivals</h2>
        <NewProducts />
      </section>

      <section className="px-4 py-8 bg-gray-50">
        <h2 className="text-3xl font-semibold text-center text-green-700  mb-6">Top Viewed Products</h2>
        <TopViewsProducts />
      </section>

      <section className="px-4 py-8 bg-gray-50">
        <h2 className="text-3xl font-semibold text-center text-green-700 mb-6">Natural Products</h2>
        <NaturalProducts />
      </section>

      <section className="px-4 py-8 bg-gray-50">
        <h2 className="text-3xl font-semibold text-center text-green-700  mb-6">Best Seller Products</h2>
        <BestSellerProducts />
      </section>

      <Footer />
    </div>
  );
}
