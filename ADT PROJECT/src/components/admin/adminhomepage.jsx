import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '../../contexts/UserContext';
import AdminProfile from './profile/adminprofile';
import AdminMovies from './movies/adminmovies';
import Search from './search/adminsearch';
import Indicator from './indicator/indicator';
import './adminhomepage.css';

const AdminHomepage = () => {
    const [logoutConfirm, setLogoutConfirm] = useState(false);
    const [activeSection, setActiveSection] = useState('search');
    const navigate = useNavigate();
    const { logout, user } = useUser();
    const [indicatorMessage, setIndicatorMessage] = useState('');

    useEffect(() => {
        if (!user || user.role !== 'admin') {
            navigate('/login');
        }
        setActiveSection('search');
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

    const showIndicator = (message) => {
        setIndicatorMessage(message);
    };

    const hideIndicator = () => {
        setIndicatorMessage('');
    };

    return (
        <div className="homepage">
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
                        onClick={() => setActiveSection('search')} 
                        className={activeSection === 'search' ? 'active' : ''}
                    >
                        SEARCH
                    </span>
                    <span 
                        onClick={() => setActiveSection('my-movies')} 
                        className={activeSection === 'my-movies' ? 'active' : ''}
                    >
                        MY MOVIES
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
                
                <Indicator message={indicatorMessage} />
                
                <div className="content-container">
                    {activeSection === 'profile' && <AdminProfile />}
                    {activeSection === 'search' && 
                        <Search 
                            showIndicator={showIndicator} 
                            hideIndicator={hideIndicator} 
                        />
                    }
                    {activeSection === 'my-movies' && 
                        <AdminMovies 
                            showIndicator={showIndicator} 
                            hideIndicator={hideIndicator} 
                        />
                    }
                </div>
            </div>
        </div>
    );
};

export default AdminHomepage;
