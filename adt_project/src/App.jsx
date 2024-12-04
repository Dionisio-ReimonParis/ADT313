import React, { useEffect } from "react";
import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import { ThemeProvider, useTheme } from "./ThemeContext";
import { UserProvider } from "./contexts/UserContext";
import Login from "./components/login/login";
import Register from "./components/register/register";
import Landing from "./components/landing/landing";
import Homepage from "./components/homepage/homepage";
import "./App.css";

function App() {
  const { isDarkMode, toggleTheme } = useTheme();
  const location = useLocation();

  useEffect(() => {
    document.body.classList.toggle('dark-mode', isDarkMode);
  }, [isDarkMode]);

  const isHomepage = location.pathname === '/homepage';

  return (
    <UserProvider>
      <div className={`app-container ${isDarkMode ? "dark-mode" : ""}`}>
        <button 
          onClick={toggleTheme} 
          className={`theme-toggle ${isHomepage ? 'theme-toggle-homepage' : ''}`}
        >
          {isDarkMode ? "Switch to Light Mode" : "Switch to Dark Mode"}
        </button>
        <div className="page-container">
          <Routes location={location}>
            <Route path="/" element={<Landing />} />
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />
            <Route path="/homepage" element={<Homepage />} />
          </Routes>
        </div>
      </div>
    </UserProvider>
  );
}

function AppWrapper() {
  return (
    <Router>
      <ThemeProvider>
        <App />
      </ThemeProvider>
    </Router>
  );
}

export default AppWrapper;
