import React, { useEffect } from "react";
import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import { TransitionGroup, CSSTransition } from "react-transition-group";
import { ThemeProvider, useTheme } from "./ThemeContext";
import Landing from "./components/landing/landing";
import Login from "./components/login/login";
import Register from "./components/register/register";
import "./App.css";

function App() {
  const { isDarkMode, toggleTheme } = useTheme();
  const location = useLocation();

  useEffect(() => {
    document.body.classList.toggle('dark-mode', isDarkMode);
  }, [isDarkMode]);

  return (
    <div className={`app-container ${isDarkMode ? "dark-mode" : ""}`}>
      <button onClick={toggleTheme} className="theme-toggle">
        {isDarkMode ? "Switch to Light Mode" : "Switch to Dark Mode"}
      </button>
      <div className="page-container">
        <TransitionGroup>
          <CSSTransition
            key={location.pathname}
            classNames="page-transition"
            timeout={500}
          >
            <Routes location={location}>
              <Route path="/" element={<Landing />} />
              <Route path="/login" element={<Login />} />
              <Route path="/register" element={<Register />} />
            </Routes>
          </CSSTransition>
        </TransitionGroup>
      </div>
    </div>
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
