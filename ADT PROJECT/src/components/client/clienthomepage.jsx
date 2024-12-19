import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '../../contexts/UserContext';
import { ViewClientMovieProvider } from '../../contexts/ViewClientMovieContext';
import ClientProfile from './profile/clientprofile';
import ClientMovies from './movies/clientmovies';
import './clienthomepage.css';

const ClientHomepage = () => {
    const [activeSection, setActiveSection] = useState('movies');
    const navigate = useNavigate();
    const { logout, user } = useUser();

    const [logoutConfirm, setLogoutConfirm] = useState(false);

    useEffect(() => {
        if (!user || user.role !== 'user') {
            navigate('/login');
        }
    }, [user, navigate]);

    const handleLogoutClick = () => {
        setLogoutConfirm(true);
    };

    const handleConfirmLogout = () => {
        logout();
        navigate('/');
    };

    const handleCancelLogout = () => {
        setLogoutConfirm(false);
    };

    return (
        <ViewClientMovieProvider>
            <div className="client-homepage">
                <div className="top-panel">
                    <div className="top-circle-1"></div>
                    <div className="top-circle-2"></div>
                    <div className="top-circle-3"></div>
                    <div className="top-circle-4"></div>
                    <div className="top-circle-5"></div>
                    <div className="top-circle-6"></div>
                    <div className="top-circle-7"></div>
                    <div className="top-circle-8"></div>
                    <div className="top-circle-9"></div>
                    <div className="top-circle-10"></div>
                    <div className="top-circle-11"></div>
                    <div className="top-circle-12"></div>
                    <div className="top-circle-13"></div>
                    <div className="top-circle-14"></div>
                    <div className="top-circle-15"></div>
                    
                    <div className="logo-container">
                        <img 
                            src="/logoMovie.png" 
                            alt="Movie Hub Logo" 
                            className="homepage-logo"
                        />
                    </div>
                    <div className="nav-links">
                        <span 
                            onClick={() => setActiveSection('profile')} 
                            className={activeSection === 'profile' ? 'active' : ''}
                        >
                            PROFILE
                        </span>
                        <span 
                            onClick={() => setActiveSection('movies')} 
                            className={activeSection === 'movies' ? 'active' : ''}
                        >
                            MOVIE LIST
                        </span>
                    </div>
                    <div className="logout-button-container">
                        {logoutConfirm && (
                            <button 
                                className="cancel-button"
                                onClick={handleCancelLogout}
                            >
                                CANCEL
                            </button>
                        )}
                        <button 
                            className={`logout-button ${logoutConfirm ? 'confirm' : ''}`}
                            onClick={logoutConfirm ? handleConfirmLogout : handleLogoutClick}
                        >
                            {logoutConfirm ? 'CONFIRM' : 'LOGOUT'}
                        </button>
                    </div>
                </div>
                <div className="bottom-panel">
                    <div className="home-shape-1"></div>
                    <div className="home-shape-2"></div>
                    <div className="home-shape-3"></div>
                    <div className="home-shape-4"></div>
                    <div className="home-shape-5"></div>
                    <div className="home-shape-6"></div>
                    <div className="home-shape-7"></div>
                    <div className="home-shape-8"></div>
                    <div className="home-shape-9"></div>
                    
                    <div className="content-container">
                        {activeSection === 'profile' && <ClientProfile />}
                        {activeSection === 'movies' && <ClientMovies />}
                    </div>
                </div>
            </div>
        </ViewClientMovieProvider>
    );
};

export default ClientHomepage;
