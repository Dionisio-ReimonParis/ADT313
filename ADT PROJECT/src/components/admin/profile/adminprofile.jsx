import React from 'react';
import { useUser } from '../../../contexts/UserContext';
import './adminprofile.css';

const Profile = () => {
    const { user } = useUser();

    if (!user) {
        return (
            <div className="profile-container">
                <div className="profile-error">
                    <p>No profile data found. Please login again.</p>
                </div>
            </div>
        );
    }

    return (
        <div className="profile-container">
            <div className="profile-content">
                <h1>User Profile</h1>
                <div className="profile-card">
                    <div className="profile-header">
                        <div className="profile-avatar">
                            {user.firstName[0]}{user.lastName[0]}
                        </div>
                        <h2>{user.firstName} {user.lastName}</h2>
                        <span className="role-badge">{user.role}</span>
                    </div>
                    
                    <div className="profile-details">
                        <div className="profile-field">
                            <label>First Name</label>
                            <p>{user.firstName}</p>
                        </div>
                        
                        <div className="profile-field">
                            <label>Middle Name</label>
                            <p>{user.middleName || 'N/A'}</p>
                        </div>
                        
                        <div className="profile-field">
                            <label>Last Name</label>
                            <p>{user.lastName}</p>
                        </div>
                        
                        <div className="profile-field">
                            <label>Email</label>
                            <p>{user.email}</p>
                        </div>
                        
                        <div className="profile-field">
                            <label>Contact Number</label>
                            <p>{user.contactNo || 'N/A'}</p>
                        </div>
                        
                        <div className="profile-field">
                            <label>Role</label>
                            <p>{user.role}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Profile; 
