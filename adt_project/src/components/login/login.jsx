import React, { useState } from "react";
import "./login.css";
import { useNavigate } from "react-router-dom";

const Login = () => {
  const [showPassword, setShowPassword] = useState(false);
  const navigate = useNavigate();

  return (
    <div className="login-container">
      <div className="left-panel"></div>
      <div className="right-panel">
        <h1>WELCOME BACK!</h1>
        <hr />
        <p>Login to start watching your favorite movies</p>
        <input type="email" placeholder="Email" />
        <input
          type={showPassword ? "text" : "password"}
          placeholder="Password"
        />
        <label>
          <input
            type="checkbox"
            onChange={() => setShowPassword(!showPassword)}
          />
          Show Password
        </label>
        <div className="buttons">
          <button onClick={() => navigate("/")}>BACK</button>
          <button onClick={() => navigate("/register")}>Create account</button>
          <button>NEXT →</button>
        </div>
      </div>
    </div>
  );
};

export default Login;
