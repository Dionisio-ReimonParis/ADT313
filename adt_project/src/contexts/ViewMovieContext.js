import React, { createContext, useContext } from 'react';
import axios from 'axios';
import { useUser } from './UserContext';

const ViewMovieContext = createContext(null);

export const ViewMovieProvider = ({ children }) => {
    const { accessToken, user } = useUser();

    const getAllMovies = async () => {
        // Validate user exists
        if (!user || !user.id) {
            throw new Error('User authentication required');
        }

        try {
            // Log request details for debugging
            console.log('Movie Fetch Request:', {
                url: "/admin/movies",
                userId: user.id,
                accessToken: accessToken ? 'Present' : 'Missing'
            });

            // Make GET request
            const response = await axios.get("/admin/movies", {
                headers: {
                    'Authorization': `Bearer ${accessToken}`
                }
            });

            // Log full response for debugging
            console.log('Movies Response:', response);

            // Validate response structure
            if (!response.data) {
                throw new Error('No data received from server');
            }

            // Handle different possible response structures
            const moviesData = response.data.movies || response.data;

            return moviesData;
        } catch (error) {
            console.error('Movie Fetch Error:', {
                message: error.message,
                responseData: error.response?.data,
                responseStatus: error.response?.status,
                responseHeaders: error.response?.headers
            });
            throw error;
        }
    };

    const getMovieById = async (movieId) => {
        // Validate user exists
        if (!user || !user.id) {
            throw new Error('User authentication required');
        }

        try {
            // Create FormData with userId and movieId
            const formData = new FormData();
            formData.append('userId', user.id);
            formData.append('movieId', movieId);

            // Make POST request with FormData
            const response = await axios.post(`/admin/movies/${movieId}`, formData, {
                headers: {
                    'Authorization': `Bearer ${accessToken}`,
                    'Content-Type': 'multipart/form-data'
                }
            });

            // Log full response for debugging
            console.log('Single Movie Response:', response);

            // Validate response structure
            if (!response.data) {
                throw new Error('No data received from server');
            }

            // Handle different possible response structures
            const movieData = response.data.movie || response.data;

            // Validate movie data
            if (!movieData || typeof movieData !== 'object') {
                throw new Error('Invalid movie data format');
            }

            return movieData;
        } catch (error) {
            // Enhanced error logging
            console.error('Single Movie Fetch Error:', {
                message: error.message,
                response: error.response?.data,
                status: error.response?.status,
                headers: error.response?.headers
            });

            // Throw a user-friendly error
            if (error.response) {
                throw new Error(error.response.data.message || 'Failed to fetch movie details');
            }

            // Rethrow to allow component-level error handling
            throw error;
        }
    };

    return (
        <ViewMovieContext.Provider value={{ getAllMovies }}>
            {children}
        </ViewMovieContext.Provider>
    );
};

export const useViewMovie = () => {
    return useContext(ViewMovieContext);
};
