import React from 'react'
import Navbar from '../../components/site/Navbar';
import Carousel from '../../components/site/Carousel';
import Footer from '../../components/site/Footer';
import NewProducts from '../../components/site/NewProducts';
import TopViewsProducts from '../../components/site/TopViewsProducts';
import NaturalProducts from '../../components/site/NaturalProducts';

export default function About() {
  return (
    <div>
       <Navbar />
       <Carousel />
       
      {/* Giới thiệu về cửa hàng */}
<section className="about-store py-16 bg-pink-100">
  <div className="container mx-auto text-center px-4">
    <h2 className="text-4xl font-semibold text-gray-800 mb-6">Một ít lời giới thiệu của chúng tôi gửi đến bạn </h2>

    {/* Thêm card box shadow cho phần giới thiệu */}
    <div className="max-w-4xl mx-auto bg-white p-8 rounded-lg shadow-lg hover:shadow-2xl transition-shadow duration-300">
      <p className="text-lg text-gray-700 mb-6">
        Chào mừng bạn đến với cửa hàng của chúng tôi! Tại đây, chúng tôi cung cấp các sản phẩm chất lượng cao
        với mức giá hợp lý. Chúng tôi luôn cam kết mang lại cho khách hàng những trải nghiệm mua sắm tuyệt vời
        và dịch vụ khách hàng chuyên nghiệp.
      </p>
      <p className="text-lg text-gray-700 mb-6">
        Với một đội ngũ chuyên gia giàu kinh nghiệm, chúng tôi tự hào về các sản phẩm đa dạng, từ quần áo, 
        giày dép, phụ kiện đến các sản phẩm điện tử và gia dụng. Mỗi sản phẩm được chúng tôi lựa chọn kỹ lưỡng 
        để đảm bảo chất lượng cao và sự hài lòng tuyệt đối cho khách hàng.
      </p>
      <p className="text-lg text-gray-700">
        Chúng tôi luôn nỗ lực phát triển và cải tiến dịch vụ để đáp ứng mọi nhu cầu mua sắm của bạn. Hãy trải nghiệm 
        cửa hàng của chúng tôi ngay hôm nay và tìm thấy những món đồ yêu thích của bạn!
      </p>
    </div>

    {/* Thêm hiệu ứng về nút CTA */}
    <div className="mt-8">
      <a href="#shop-now" className="inline-block bg-pink-600 text-white text-lg py-3 px-8 rounded-full shadow-lg hover:bg-pink-700 transition-all duration-300">
        Mua ngay để được ưu đãi hời nhé !
      </a>
    </div>
    
  </div>
</section>


       <section className="px-4 py-8 bg-gray-50">
           <h2 className="text-3xl font-semibold text-center text-gray-800 mb-6">Popular Products </h2>
           <NewProducts />
       </section>
       
       <section className="px-4 py-8 bg-gray-50">
           <h2 className="text-3xl font-semibold text-center text-gray-800 mb-6"></h2>
           <TopViewsProducts />
       </section>
       
       <section className="px-4 py-8 bg-gray-50">
           <h2 className="text-3xl font-semibold text-center text-gray-800 mb-6"></h2>
           <NaturalProducts />
       </section>

       <Footer />
    </div>
  )
}
