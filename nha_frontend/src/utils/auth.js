export const isAuthenticated = () => {
    // Kiểm tra xem token và quyền admin có trong LocalStorage hay không
    const token = localStorage.getItem('token');
    if (token) return true; else return false;
};

export const isAdminAuthenticated = () => {
    // Kiểm tra xem token và quyền admin có trong LocalStorage hay không
    const token = localStorage.getItem('token');
    const userRole = localStorage.getItem('role'); // Giá trị cần lưu là quyền role
    return token && userRole === 'admin-web';
};

export const logout = () => {
    localStorage.removeItem('token');
    localStorage.removeItem('user');
    localStorage.removeItem('role');
    window.location.href = '/login'; // Điều hướng về trang login chính
};
