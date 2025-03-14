const API_CONFIG = {
  BASE_URL: "http://localhost:1337/api", // URL của API backend

  APP_KEY:
    "d80ddc10338f773062b8a6eb3f2e5e959b531f343c28fc0701b515650e274e8a0f184447479e07a8436734e0cca0e77f907a9ce6df4c06ce9385ac2c9ed6fff52449dd5293123998c009f737ab3508716e7bc62f37ca4229711a3ed6a1a3e2c4202b15d4f8f6e6e16a8eab572de91edcdcee6d870bb72a8ef4c8ce6e343fa47b", // App key cho người dùng chưa đăng nhập
  HEADERS: {
    "Content-Type": "application/json",
    Accept: "application/json",
  },
  IMAGE_URL: "http://localhost:1337",
  APP_URL: "http://localhost:1337/",
};

const AUTH_CONFIG = {
  LOGIN_URL: "/auth/login",
  LOGOUT_URL: "/auth/logout",
  JWT_EXPIRATION_TIME: "1h", // Thời gian hết hạn của JWT
  TOKEN_STORAGE_KEY: "auth_token", // Key lưu trữ token trong localStorage/sessionStorage
};
export { API_CONFIG, AUTH_CONFIG };
