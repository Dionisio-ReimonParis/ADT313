import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { useUser } from "../../contexts/UserContext";
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
  const [error, setError] = useState("");
  const navigate = useNavigate();
  const { login } = useUser();

  const handleRegister = async () => {
    setError("");

    if (password !== confirmPassword) {
      setError('Passwords do not match');
      return;
    }

    try {
      const response = await axios.post('/admin/register', {
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        email: email,
        contactNo: contactNo,
        password: password
      });

      if (response.data.message === "User created") {
        try {
          const loginResponse = await axios.post('/admin/login', {
            email: email,
            password: password
          });

          if (loginResponse.data.access_token) {
            const userData = {
              id: loginResponse.data.user.userId,
              firstName: loginResponse.data.user.firstName,
              middleName: loginResponse.data.user.middleName,
              lastName: loginResponse.data.user.lastName,
              email: loginResponse.data.user.email,
              contactNo: loginResponse.data.user.contactNo,
              role: loginResponse.data.user.role
            };

            login(userData, loginResponse.data.access_token);

            if (loginResponse.data.user.role === 'admin') {
              navigate("/homepage");
            } else {
              navigate("/");
            }
          } else {
            setError('Registration successful, but login failed.');
          }
        } catch (loginError) {
          console.error('Full Login after registration Error:', loginError);
          
          if (loginError.response) {
            console.error('Login Response Error:', loginError.response.data);
            console.error('Login Response Status:', loginError.response.status);
            console.error('Login Response Headers:', loginError.response.headers);
          } else if (loginError.request) {
            console.error('Login Request Error:', loginError.request);
          } else {
            console.error('Login Setup Error:', loginError.message);
          }
          
          setError('Registration successful, but could not log in automatically.');
        }
      } else {
        setError('Registration failed. Please try again.');
      }
    } catch (error) {
      console.error('Full Registration Error:', error);
      
      if (error.response) {
        console.error('Response Error:', error.response.data);
        console.error('Response Status:', error.response.status);
        console.error('Response Headers:', error.response.headers);
        setError(error.response.data.message || 'Registration failed. Please try again.');
      } else if (error.request) {
        console.error('Request Error:', error.request);
        setError('No response from server. Please check your network connection.');
      } else {
        console.error('Setup Error:', error.message);
        setError('An error occurred during registration. Please try again.');
      }
    }
  };

  return (
    <div className="register-container">
      <div className="left-panel">
        <img 
          src="/logoMovie.png" 
          alt="Movie Hub Logo" 
          className="register-logo"
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
        <h1>JOIN US NOW</h1>
        <p>Create an account to watch your favorite movies</p>
        
        {error && <div className="error-message">{error}</div>}
        
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
            Join Now
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
