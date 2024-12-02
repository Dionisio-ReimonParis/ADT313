import React, { useEffect } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { ThemeProvider, useTheme } from "./ThemeContext";
import Landing from "./components/landing/landing";
import Login from "./components/login/login";
import Register from "./components/register/register";
import "./App.css";

function App() {
  const { isDarkMode, toggleTheme } = useTheme();

  useEffect(() => {
    document.body.classList.toggle('dark-mode', isDarkMode);
  }, [isDarkMode]);

  return (
    <Router>
      <div className={`app-container ${isDarkMode ? "dark-mode" : ""}`}>
        <button onClick={toggleTheme} className="theme-toggle">
          {isDarkMode ? "Switch to Light Mode" : "Switch to Dark Mode"}
        </button>
        <Routes>
          <Route path="/" element={<Landing />} />
          <Route path="/login" element={<Login />} />
          <Route path="/register" element={<Register />} />
        </Routes>
      </div>
    </Router>
  );
}

function AppWrapper() {
  return (
    <ThemeProvider>
      <App />
    </ThemeProvider>
  );
}

export default AppWrapper;
