import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import "./register.css";

const Register = () => {
  const [firstName, setFirstName] = useState("");
  const [middleName, setMiddleName] = useState("");
  const [lastName, setLastName] = useState("");
  const [email, setEmail] = useState("");
  const [contactNo, setContactNo] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false);
  const navigate = useNavigate();

  const handleRegister = async () => {
    // Basic validation
    if (password !== confirmPassword) {
      alert('Passwords do not match');
      return;
    }

    try {
      const response = await axios.post('http://localhost/movieproject-api/register.php', {
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        email: email,
        contactNo: contactNo,
        password: password,
        role: "user"
      });

      if (response.data.status === 'success') {
        alert('good');
        navigate("/login");
      } else {
        alert('bad');
      }
    } catch (error) {
      console.error('Registration error:', error);
      alert('bad');
    }
  };

  return (
    <div className="register-container">
      <div className="left-panel">
        <div className="circle-1"></div>
        <div className="circle-2"></div>
        <div className="circle-3"></div>
        <div className="circle-4"></div>
        <div className="circle-5"></div>
        <div className="circle-6"></div>
        <div className="circle-7"></div>
        <div className="circle-8"></div>
        <div className="logo-container">
          <img 
            src="/logoMovie.png" 
            alt="Movie Hub Logo" 
            className="register-logo" 
          />
        </div>
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
        <h1>JOIN US NOW</h1>
        <p>Create an account to watch your favorite movies</p>
        
        <input 
          type="text" 
          placeholder="First Name" 
          value={firstName}
          onChange={(e) => setFirstName(e.target.value)}
        />
        
        <input 
          type="text" 
          placeholder="Middle Name" 
          value={middleName}
          onChange={(e) => setMiddleName(e.target.value)}
        />
        
        <input 
          type="text" 
          placeholder="Last Name" 
          value={lastName}
          onChange={(e) => setLastName(e.target.value)}
        />
        
        <input 
          type="email" 
          placeholder="Email Address" 
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        
        <input 
          type="tel" 
          placeholder="Contact Number" 
          value={contactNo}
          onChange={(e) => setContactNo(e.target.value)}
        />
        
        <input 
          type={showPassword ? "text" : "password"} 
          placeholder="Password" 
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        
        <input 
          type={showPassword ? "text" : "password"} 
          placeholder="Confirm Password" 
          value={confirmPassword}
          onChange={(e) => setConfirmPassword(e.target.value)}
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
        
        <div className="register-buttons">
          <button onClick={handleRegister}>
            Register
          </button>
          <button onClick={() => navigate("/login")}>
            Already have an account?
          </button>
          <button onClick={() => navigate("/")} className="go-back-btn">
            Go to Home
          </button>
        </div>
      </div>
    </div>
  );
};

export default Register;
