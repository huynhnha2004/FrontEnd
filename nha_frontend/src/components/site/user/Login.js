import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import UserApi from "../../../services/UserApi";

export default function Login() {
  const [username, setUserName] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState(null); // Lưu trữ thông báo lỗi
  const [loading, setLoading] = useState(false); // Trạng thái Loading
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault(); // Ngăn chặn hành động mặc định

    // Kiểm tra mật khẩu có trùng khớp không

    // Kiểm tra dữ liệu nhập vào
    if (!username || !password) {
      setError("Vui lòng điền đầy đủ thông tin");
      return;
    }

    setError(null); // Reset lỗi trước khi gửi
    setLoading(true);
    try {
      let data = {
       "identifier":username,
       "password":password
      };

      const response = await UserApi.login(data);
      console.log(response);
      setLoading(false);
      localStorage.setItem('token',response.data.jwt);
      localStorage.setItem('user',JSON.stringify(response.data.user));
      
      navigate('/');
    } catch (err) {
      setLoading(false);

      if (err.response && err.response.data && err.response.data.error) {
        const errorMessage = err.response.data.error.message;
        setError(errorMessage); // Hiển thị thông báo lỗi từ API
      } else {
        setError("Đăng nhap thất bại. Vui lòng thử lại.");
      }
    }
    // Tiếp tục xử lý gửi form tại đây...
  };
  return (
    
    <div className="flex items-center justify-center h-screen bg-gradient-to-b from-gray-200 to-gray-400">
      <div className="card bg-base-100 w-full max-w-sm shrink-0 shadow-2xl">
      <h2 className="text-2xl font-semibold text-center mb-6">Login</h2>
      {error &&<p className='text-red-500'>{error}</p>}
        <form className="card-body">
          <div className="form-control">
            <label className="label">
              <span className="label-text">Username</span>
            </label>
            <input
              type="username"
              placeholder="username"
              className="input input-bordered"
              required onChange={(e) => setUserName(e.target.value)}
            />
          </div>
          <div className="form-control">
            <label className="label">
              <span className="label-text">Password</span>
            </label>
            <input
              type="password"
              placeholder="password"
              className="input input-bordered"
              required    onChange={(e) => setPassword(e.target.value)}
            />
            <label className="label">
              <a href="#" className="label-text-alt link link-hover">
                Forgot password?
              </a>
            </label>
          </div>
          <div className="form-control">
            <label className="label cursor-pointer">
              <span className="label-text">Remember me</span>
              <input
                type="checkbox"
                defaultChecked
                className="checkbox checkbox-primary"
              />
            </label>
          </div>
          <div className="form-control mt-6">
            <button className="btn btn-primary"onClick={handleSubmit}>Login</button>
          </div>
          <div className="form-control"></div>
        </form>
      </div>
    </div>
  );
}
