import axios from "axios";
import { API_CONFIG } from "../../config/api";

const UploadApi = {
  uploadFile(file) {
    let token = localStorage.getItem("token");
    var config = {
      baseURL: API_CONFIG.BASE_URL,
      headers: {
        ...API_CONFIG.HEADERS,
        authorization: token ? `Bearer ${token}` : "",
        "Content-Type": "multipart/form-data", // Cần thiết cho upload file
      },
      url: "/upload",
      method: "POST",

      data: file, 
    };

    return axios.request(config);
  },
  getAllFiles(params) {
    let token = localStorage.getItem("token");
    var config = {
      baseURL: API_CONFIG.BASE_URL,
      headers: {
        ...API_CONFIG.HEADERS,
        authorization: token ? `Bearer ${token}` : "",
      },
      url: "/upload/files", // Sửa lỗi dấu nháy kép
      method: "GET",
      params:params,
    };

    return axios.request(config);
  },
  deleteFile(id) {
    let token = localStorage.getItem("token");
    var config = {
      baseURL: API_CONFIG.BASE_URL,
      headers: {
        ...API_CONFIG.HEADERS,
        authorization: token ? `Bearer ${token}` : "",
      },
      url:'/upload/files' + "/" + id, 
      method: "DELETE",
    };

    return axios.request(config);
  },
};

export default UploadApi;
