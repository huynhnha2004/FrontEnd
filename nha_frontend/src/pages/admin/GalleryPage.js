import React from 'react'
import Menu from "../../components/admin/Menu";
import Navbar from "../../components/admin/Navbar";
import Footer from "../../components/admin/Footer";
import Gallery from '../../components/admin/Gallery';

export default function GalleryPage() {
  return (
    <div>
       <Navbar />
            <div className="grid grid-cols-4 bg-sky-200 mt-2">
              {/* Sidebar */}
              <div className="col-span-1">
                <Menu />
              </div>
      
              {/* Main Content */}
              <div className="col-span-3">
                <Gallery/>
              </div>
            </div>
      
            <Footer />
    </div>
  )
}