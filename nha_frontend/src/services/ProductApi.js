import { API_CONFIG } from "../config/api";

import axios from "axios";

const ProductApi = {
  getAll(params = {}) {
    var config = {
      baseURL: API_CONFIG.BASE_URL,

      headers: API_CONFIG.HEADERS,

      url: "/products",

      method: "GET",

      params: params,
    };

    return axios.request(config);
  },

  get(id, params = {}) {
    var config = {
      baseURL: API_CONFIG.BASE_URL,

      headers: API_CONFIG.HEADERS,

      url: "/products" + "/" + id,

      method: "GET",

      params: params,
    };

    return axios.request(config);
  },
  
  update(id, product = {}) {
    let token = localStorage.getItem('token');
    var config = {
      baseURL: API_CONFIG.BASE_URL,

      headers: {
        ...API_CONFIG.HEADERS,
        'authorization': token ? `Bearer ${token}` : ""
      },

      url: "/products" + "/" + id,

      method: "PUT",

      data:{
        data:product}

    };
    return axios.request(config);
  },

  create(product) {
    let token = localStorage.getItem('token');
    var config = {
      baseURL: API_CONFIG.BASE_URL,

      headers: {
        ...API_CONFIG.HEADERS,
        'authorization': token ? `Bearer ${token}` : ""
      },

      url: "/products",

      method: "POST",

      data:{
        data:product}

    };
    return axios.request(config);
  },


  delete(id) {
    let token = localStorage.getItem('token');
    var config = {
      baseURL: API_CONFIG.BASE_URL,

      headers: {
        ...API_CONFIG.HEADERS,
        'authorization': token ? `Bearer ${token}` : ""
      },

      url: "/products" + "/" + id,

      method: "DELETE",

   
    };
    

    return axios.request(config);
  },
};

export default ProductApi;
