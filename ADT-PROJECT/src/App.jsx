import React, { useEffect } from "react";
import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import { ThemeProvider, useTheme } from "./ThemeContext";
import { UserProvider } from "./contexts/UserContext";
import { AddMovieProvider } from './contexts/AddMovieContext';
import { ViewMovieProvider } from './contexts/ViewMovieContext';
import { UpdateMovieProvider } from './contexts/UpdateMovieContext';
import AdminHomepage from "./components/admin/adminhomepage";
import ClientHomepage from "./components/client/clienthomepage";
import Login from "./components/login/login";
import Register from "./components/register/register";
import Landing from "./components/landing/landing";
import "./App.css";

function App() {
  const { isDarkMode, toggleTheme } = useTheme();
  const location = useLocation();

  useEffect(() => {
    document.body.classList.toggle('dark-mode', isDarkMode);
  }, [isDarkMode]);

  const isLandingLoginRegister = ['/', '/login', '/register'].includes(location.pathname);
  const isAdminClientPage = ['/admin', '/client'].includes(location.pathname);

  return (
    <div className={`app-container ${isDarkMode ? "dark-mode" : ""}`}>
      <button 
        onClick={toggleTheme} 
        className={`theme-toggle ${isAdminClientPage ? 'theme-toggle-homepage' : isLandingLoginRegister ? 'theme-toggle-landing' : ''}`}
      >
        {isDarkMode ? "Switch to Light Mode" : "Switch to Dark Mode"}
      </button>
      <div className="page-container">
        <Routes>
          <Route path="/" element={<Landing />} />
          <Route path="/login" element={<Login />} />
          <Route path="/register" element={<Register />} />
          <Route path="/admin" element={<AdminHomepage />} />
          <Route path="/client" element={<ClientHomepage />} />
        </Routes>
      </div>
    </div>
  );
}

function AppWrapper() {
  return (
    <Router>
      <ThemeProvider>
        <UserProvider>
          <AddMovieProvider>
            <ViewMovieProvider>
              <UpdateMovieProvider>
                <App />
              </UpdateMovieProvider>
            </ViewMovieProvider>
          </AddMovieProvider>
        </UserProvider>
      </ThemeProvider>
    </Router>
  );
}

export default AppWrapper;
