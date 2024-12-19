import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { useUser } from "../../contexts/UserContext";
import "./login.css";

const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false);
  const [error, setError] = useState("");
  const navigate = useNavigate();
  const { login } = useUser();

  const handleLogin = async () => {
    setError("");

    try {
      const response = await axios.post('/user/login', {
        email: email,
        password: password
      });

      console.log('Login Response:', response.data);

      if (response.data.access_token) {
        const userData = {
          id: response.data.user.userId,
          firstName: response.data.user.firstName,
          middleName: response.data.user.middleName,
          lastName: response.data.user.lastName,
          email: response.data.user.email,
          contactNo: response.data.user.contactNo,
          role: response.data.user.role
        };

        login(userData, response.data.access_token);

        console.log('User Role:', userData.role);
        switch(userData.role) {
          case 'admin':
            console.log('Navigating to homepage');
            navigate("/admin");
            break;
          case 'user':
            console.log('Navigating to client');
            navigate("/client");
            break;
          default:
            console.log('Navigating to landing page');
            navigate("/");
        }
      } else {
        setError('Login failed. Please check your credentials.');
      }
    } catch (error) {
      console.error('Full Login Error:', error);
      
      if (error.response) {
        console.error('Response Error:', error.response.data);
        console.error('Response Status:', error.response.status);
        console.error('Response Headers:', error.response.headers);
        setError(error.response.data.message || 'Login failed. Please try again.');
      } else if (error.request) {
        console.error('Request Error:', error.request);
        setError('No response from server. Please check your network connection.');
      } else {
        console.error('Setup Error:', error.message);
        setError('An error occurred during login. Please try again.');
      }
    }
  };

  return (
    <div className="login-container">
      <div className="left-panel">
        <img 
          src="/logoMovie.png" 
          alt="Movie Hub Logo" 
          className="login-logo"
        />
        <div className="circle-1"></div>
        <div className="circle-2"></div>
        <div className="circle-3"></div>
        <div className="circle-4"></div>
        <div className="circle-5"></div>
        <div className="circle-6"></div>
        <div className="circle-7"></div>
        <div className="circle-8"></div>
      </div>
      <div className="right-panel">
        <div className="shape-1"></div>
        <div className="shape-2"></div>
        <div className="shape-3"></div>
        <div className="shape-4"></div>
        <div className="shape-5"></div>
        <div className="shape-6"></div>
        <div className="shape-7"></div>
        <div className="shape-8"></div>
        <div className="shape-9"></div>
        <h1>WELCOME BACK</h1>
        <p>Login to start watching your favorite movies</p>
        
        {error && <div className="error-message">{error}</div>}
        
        <input 
          type="email" 
          placeholder="Email Address" 
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        
        <input 
          type={showPassword ? "text" : "password"} 
          placeholder="Password" 
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        
        <div className="show-password">
          <input 
            type="checkbox" 
            id="show-password" 
            checked={showPassword}
            onChange={() => setShowPassword(!showPassword)}
          />
          <label htmlFor="show-password">Show Password</label>
        </div>
        
        <div className="login-buttons">
          <button onClick={handleLogin}>
            Login
          </button>
          <button onClick={() => navigate("/register")}>
            Create Account
          </button>
          <button onClick={() => navigate("/")} className="go-back-btn">
            Go to Home
          </button>
        </div>
      </div>
    </div>
  );
};

export default Login;
