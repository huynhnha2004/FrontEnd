
import React, { useEffect, useState } from "react";
import UploadApi from "../../services/admin/UploadApi";
import Loading from "../Loading";
import { API_CONFIG } from "../../config/api";

export default function Gallery({ image = [], setImage = () => {} }) 
  { 
    const [images, setImages] = useState([]); 
    const [loading, setLoading] = useState(true); 
    const [fileToUpload,setFileToUpload]=useState(null);
    const [uploadMessage,setUploadMessage]=useState('');
    const [uploading, setUploading] = useState(false); 
    const [reload,setReload]=useState(0);
    const [deleteMessage,setDeleteMessage]=useState('');
    const [deleting, setDeleting] = useState(false); 
    const [selectedImages, setSelectedImages] = useState([]);
    const handleImageSelect = (imageId) => { 
      // Toggle trạng thái chọn/bỏ chọn của hình ảnh
      if (selectedImages.includes(imageId)) { 
        // Nếu hình ảnh đã được chọn, xóa nó khỏi danh sách
        setSelectedImages(selectedImages.filter(id => id !== imageId)); 
      } else { 
        // Nếu hình ảnh chưa được chọn, thêm nó vào danh sách
        setSelectedImages([...selectedImages, imageId]); 
      } 
    };
    
    useEffect(() => { 
      const fetchImages = async () => { 
        try {  
          var response = await UploadApi.getAllFiles(); 
        
          setImages(response.data); 
          setLoading(false); 
        } catch (e) { 
        
        } 
      }; 
      fetchImages(); 
    }, [reload]);
    
    const handleUpload = async () => { 
      if (!fileToUpload) { 
          setUploadMessage("No file selected"); 
          return; 
      } 
      setUploading(true); 
      setUploadMessage(''); 
      try { 
          var formData = new FormData(); 
          formData.append('files', fileToUpload); 
          const response = await UploadApi.uploadFile(formData); 
          setUploadMessage("Upload success"); 
          if(reload==0)setReload(1);else setReload(0);
      } 
      catch (e) { 
          setUploadMessage("Upload error: " + e); 
      } 
      finally { 
          setUploading(false); 
          setFileToUpload(null);  
      } 
      
  };
  const handleDelete = async (e) => { 
    setDeleting(true); 
    setDeleteMessage(''); 
    try {  
        const response = await UploadApi.deleteFile(e.target.dataset.id); 
        setDeleteMessage("delete success"); 
        if(reload==0)setReload(1);else setReload(0);
    } 
    catch (e) { 
        setDeleteMessage("delete error: "+ e); 
       
    } 
    finally { 
        setDeleting(false); 
      
    } 
    
};

  var myview=loading?<Loading/>:images.map((image)=>(
    <div className="relative bg-gray-100 p-3 rounded-lg shadow-md">
    <img
      src={API_CONFIG.IMAGE_URL+ image.url}
      alt="Tên hình"
      className="w-full h-40 object-cover rounded-md"
    />
    <p className="text-center text-sm mt-2">{image.name}</p>
    <input
type="checkbox" checked={selectedImages.includes(image.id)}
    className="absolute top-2 left-2 w-5 h-5 accent-blue-500"
   onChange={()=>(handleImageSelect(image.id))}
  />
    <button onClick={handleDelete} data-id={image.id} className="absolute top-2 right-2 bg-red-500 text-white rounded-full p-1 hover:bg-red-700">
    ❌
    </button>
  </div>
  ))
  var myview1 = uploading ? <Loading/> : (
    uploadMessage && 
    <div className={`mb-4 mx-32 text-center py-2 px-4 rounded-lg shadow-md text-white ${uploadMessage.includes("error") ? "bg-red-500" : "bg-green-500"}`}>
      {uploadMessage}
    </div>
  );
  
  var myview2 = deleting ? <Loading/> : (
    deleteMessage && 
    <div className={`mx-32 text-center py-2 px-4 rounded-lg shadow-md text-white ${deleteMessage.includes("error") ? "bg-red-500" : "bg-green-500"}`}>
      {deleteMessage}
    </div>
  );
  
  return (
    <div className="p-6 bg-gradient-to-b from-blue-200 to-blue-400 min-h-screen">
      {/* Tiêu đề */}
      <h1 className="text-3xl font-bold text-center text-white mb-6">
        📸 Gallery
      </h1>

      {/* Khu vực tải ảnh lên */}
      <div className="flex justify-center items-center gap-4">
        <input
          type="file"
          multiple
          className="file-input file-input-bordered file-input-primary"
       onChange={(e)=>{setFileToUpload(e.target.files[0])}}
       
       />
        <button onClick={handleUpload} className="btn btn-info">File Upload</button>
      </div>
      {myview1}
{myview2}
<p onClick={()=>{setImage(selectedImages)}} className="btn bg-blue-500 text-white px-4 py-2 rounded-lg shadow-md hover:bg-blue-600 transition-all">
  📷 Them hình ảnh
</p>

      {/* Khu vực hiển thị ảnh */}
      <div className="mt-6 p-6 border border-blue-500 shadow-lg rounded-lg bg-white">
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4">
       {myview}
        </div>
      </div>
    </div>
  );
}