import React from "react";
import { useNavigate } from "react-router-dom";
import "./landing.css";

const Landing = () => {
  const navigate = useNavigate();

  return (
    <div className="landing-container">
      <div className="left-panel">
        <img 
          src="/logoMovie.png" 
          alt="Movie Hub Logo" 
          className="landing-logo"
          style={{
            position: 'absolute',
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%) scale(0.5)',
            zIndex: 3,
            maxWidth: '100%',
            height: 'auto'
          }}
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
        <h1>MOVIE HUB</h1>
        <h2>EXPERIENCE THE MAGIC OF CINEMA</h2>
        <p>
        Discover and Share Your Favorite Movies Anytime, Anywhere!
        </p>
        <div className="buttons">
          <button onClick={() => navigate("/register")}>
            JOIN US
          </button>
          <button onClick={() => navigate("/login")}>
            LOG IN
          </button>
        </div>
      </div>
    </div>
  );
};

export default Landing;
