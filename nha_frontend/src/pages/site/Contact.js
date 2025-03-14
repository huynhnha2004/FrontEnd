import React from 'react'
import Navbar from '../../components/site/Navbar';
import Carousel from '../../components/site/Carousel';
import Footer from '../../components/site/Footer';

export default function Contact() {
  return (
    <div>
       <Navbar />
       <Carousel />
       
       {/* Hero section (Trang nổi bật) */}
       <section className="contact-hero  bg-pink-200 text-white py-5">
           <div className="container mx-auto text-center px-2">
               <h1 className="text-4xl font-bold mb-2">Liên hệ với chúng tôi</h1>
               <p className="text-lg mb-6">
                   Chúng tôi luôn sẵn sàng hỗ trợ bạn! Nếu bạn có bất kỳ câu hỏi nào hoặc cần hỗ trợ, vui lòng điền thông tin vào mẫu dưới đây và chúng tôi sẽ phản hồi sớm nhất có thể.
               </p>
               <button className="bg-pink-500 text-white px-6 py-2 rounded-full text-xl">
                   Liên hệ ngay
               </button>
           </div>
       </section>
       
       {/* Form liên hệ */}
       <section className="contact-form py-16">
           <div className="container mx-auto px-4">
               <h2 className="text-3xl font-semibold text-center text-gray-800 mb-8">Gửi câu hỏi cho chúng tôi</h2>
               <form className="max-w-2xl mx-auto bg-white p-8 rounded-lg shadow-lg">
                   <div className="mb-4">
                       <label htmlFor="name" className="block text-lg font-medium text-gray-700">Họ và tên</label>
                       <input type="text" id="name" className="w-full p-3 border border-gray-300 rounded-md" placeholder="Nhập tên của bạn" />
                   </div>
                   <div className="mb-4">
                       <label htmlFor="email" className="block text-lg font-medium text-gray-700">Email</label>
                       <input type="email" id="email" className="w-full p-3 border border-gray-300 rounded-md" placeholder="Nhập email của bạn" />
                   </div>
                   <div className="mb-4">
                       <label htmlFor="message" className="block text-lg font-medium text-gray-700">Thông điệp</label>
                       <textarea id="message" className="w-full p-3 border border-gray-300 rounded-md" placeholder="Viết câu hỏi hoặc yêu cầu của bạn" rows="4"></textarea>
                   </div>
                   <button type="submit" className="bg-pink-500 text-white px-6 py-2 rounded-full text-xl">Gửi đi</button>
               </form>
           </div>
       </section>
       
       <Footer />
    </div>
  )
}
