import { API_CONFIG } from '../config/api';
import axios from 'axios';

const BrandApi = {
    getAll(params = {}) {
        var config = {
            baseURL: API_CONFIG.BASE_URL,
            headers: API_CONFIG.HEADERS,
            url: '/brands',
            method: 'get',
            params: params
        };
        return axios.request(config);
    },
    get(id, params = {}) {
        var config = {
            baseURL: API_CONFIG.BASE_URL,
            headers: API_CONFIG.HEADERS,
            url: '/brands/' + id,
            method: 'get',
            params: params
        };
        return axios.request(config);
    }
};

export default BrandApi;