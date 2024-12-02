import React from "react";
import "./landing.css";
import { useNavigate } from "react-router-dom";

const Landing = () => {
  const navigate = useNavigate();

  return (
    <div className="landing-container">
      <div className="left-panel"></div>
      <div className="right-panel">
        <h1>MOVIE HUB</h1>
        <h2>EXPERIENCE THE MAGIC OF CINEMA</h2>
        <p>
          Discover and Share <br />
          Your Favorite Movies <br />
          Anytime, Anywhere!
        </p>
        <div className="buttons">
          <button onClick={() => navigate("/register")}>JOIN US</button>
          <button onClick={() => navigate("/login")}>LOG IN</button>
        </div>
      </div>
    </div>
  );
};

export default Landing;
