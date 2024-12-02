import React, { useState } from "react";
import "./register.css";
import { useNavigate } from "react-router-dom";

const Register = () => {
  const [showPassword, setShowPassword] = useState(false);
  const navigate = useNavigate();

  return (
    <div className="register-container">
      <div className="left-panel"></div>
      <div className="right-panel">
        <h1>JOIN US NOW!</h1>
        <hr />
        <p>Create an account to watch your favorite movies</p>
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
        <input type="text" placeholder="First Name" />
        <input type="text" placeholder="Middle Name" />
        <input type="text" placeholder="Last Name" />
        <input type="text" placeholder="Contact Number" />
        <div className="buttons">
          <button onClick={() => navigate("/")}>BACK</button>
          <button onClick={() => navigate("/login")}>
            Already have an account
          </button>
          <button>NEXT →</button>
        </div>
      </div>
    </div>
  );
};

export default Register;
