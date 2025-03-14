import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import UserApi from "../../../services/UserApi";

export default function Register() {
  const [username, setUserName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [error, setError] = useState(null); // Lưu trữ thông báo lỗi
  const [loading, setLoading] = useState(false); // Trạng thái Loading
  const navigate = useNavigate();
  const handleSubmit = async (e) => {
    e.preventDefault(); // Ngăn chặn hành động mặc định

    // Kiểm tra mật khẩu có trùng khớp không
    if (password !== confirmPassword) {
      setError("Mật khẩu xác nhận không khớp");
      return;
    }

    // Kiểm tra dữ liệu nhập vào
    if (!username || !email || !password) {
      setError("Vui lòng điền đầy đủ thông tin");
      return;
    }

    setError(null); // Reset lỗi trước khi gửi
    setLoading(true);
    try {
      const userData = {
        username: username,
        email: email,
        password: password,
      };

      const response = await UserApi.register(userData);
      console.log(response);
      setLoading(false);
      navigate('/login');
    } catch (err) {
      setLoading(false);

      if (err.response && err.response.data && err.response.data.error) {
        const errorMessage = err.response.data.error.message;
        setError(errorMessage); // Hiển thị thông báo lỗi từ API
      } else {
        setError("Đăng ký thất bại. Vui lòng thử lại.");
      }
    }
    // Tiếp tục xử lý gửi form tại đây...
  };

  return (
    <div className="flex items-center justify-center h-screen bg-gradient-to-b from-gray-200 to-gray-400">
      <div className="card bg-base-100 w-full max-w-sm shrink-0 shadow-2xl">
        <h2 className="text-2xl font-semibold text-center mb-6">Register</h2>
        {error &&<p className='text-red-500'>{error}</p>}
        <form className="card-body">
          <div className="form-control">
            <label className="label">
              <span className="label-text">User name</span>
            </label>
            <input
              type="Text"
              placeholder="User Name"
              className="input input-bordered"
              required
              onChange={(e) => setUserName(e.target.value)}
            />
          </div>

          <div className="form-control">
            <label className="label">
              <span className="label-text">Email</span>
            </label>
            <input
              type="Email"
              placeholder="Email"
              className="input input-bordered"
              required
              onChange={(e) => setEmail(e.target.value)}
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
              required
              onChange={(e) => setPassword(e.target.value)}
            />
          </div>
          <div className="form-control">
            <label className="label">
              <span className="label-text">Confirm Password</span>
            </label>
            <input
              type="password"
              placeholder="password"
              className="input input-bordered"
              required
              onChange={(e) => setConfirmPassword(e.target.value)}
            />
          </div>
          <div className="form-control mt-6">
            <button className="btn btn-primary"onClick={handleSubmit}>Register</button>
          </div>
          <div className="form-control"></div>
        </form>
      </div>
    </div>
  );
}
