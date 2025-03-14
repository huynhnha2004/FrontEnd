import { API_CONFIG } from "../config/api";

import axios from "axios";

const UserApi = {
  register(userData = {}) {
    var config = {
      baseURL: API_CONFIG.BASE_URL,

      headers: API_CONFIG.HEADERS,

      url: "/auth/local/register",

      method: "post",

      data:userData
    };

    return axios.request(config);
  },
  login(data = {}) {
    var config = {
      baseURL: API_CONFIG.BASE_URL,

      headers: API_CONFIG.HEADERS,

      url: "/auth/local",

      method: "post",

      data:data
    };

    return axios.request(config);
  },
  me() {
    let token = localStorage.getItem('token');
    var config = {
      baseURL: API_CONFIG.BASE_URL,
      headers: {
        ...API_CONFIG.HEADERS,
        'authorization': token ? `Bearer ${token}` : ""
      },
      url: '/users/me',
      method: 'get',
      params:{
        populate:'role'
      }
    }

    return axios.request(config);
  },
};

export default UserApi;
