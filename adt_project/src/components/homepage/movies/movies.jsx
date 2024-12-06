import React, { useState, useEffect } from 'react';
import { useUser } from '../../../contexts/UserContext';
import { useMovie } from '../../../contexts/MovieContext';
import './movies.css';

const Movies = () => {
  const [movies, setMovies] = useState([]);
  const [selectedMovie, setSelectedMovie] = useState(null);
  const [isEditing, setIsEditing] = useState(false);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const { user } = useUser();
  const { 
    getUserMovies, 
    getMovieDetails, 
    updateMovie, 
    deleteMovie, 
    deleteCasts, 
    deletePhotos, 
    deleteVideos 
  } = useMovie();

  // Fetch user's movies
  useEffect(() => {
    const fetchUserMovies = async () => {
      try {
        setLoading(true);
        setError(null);

        // Validate user and context
        if (!user) {
          throw new Error('No user logged in');
        }
        if (!getUserMovies) {
          throw new Error('getUserMovies function is not available');
        }

        const userMovies = await getUserMovies(user.id);
        
        console.log('Fetched movies:', userMovies);

        if (!userMovies || userMovies.length === 0) {
          console.warn('No movies found for this user');
        }

        setMovies(userMovies || []);
      } catch (error) {
        console.error('Detailed error fetching movies:', error);
        setError(error.message || 'Failed to load movies');
      } finally {
        setLoading(false);
      }
    };

    if (user) {
      fetchUserMovies();
    }
  }, [user, getUserMovies]);

  // Open movie details panel
  const handleMovieClick = async (movieId) => {
    try {
      console.log('Fetching details for movie ID:', movieId);
      
      // Fetch movie details from local database
      const response = await fetch(`/movies/${movieId}/details`, {
        headers: {
          'Authorization': `Bearer ${user.accessToken}`
        }
      });
      
      if (!response.ok) {
        // Log the error response text
        const errorText = await response.text();
        console.error('Error response text:', errorText);
        throw new Error(`Failed to fetch movie details. Status: ${response.status}, ${errorText}`);
      }
      
      const movieData = await response.json();
      
      // Log the entire response
      console.log('Full Response:', JSON.stringify(movieData, null, 2));
      
      // If the response is not in the expected format, log details
      if (!movieData) {
        console.error('Received empty movie data');
        alert('No movie details found');
        return;
      }

      // Try to extract movie details from different possible structures
      const movie = movieData.movie || 
                    movieData.data || 
                    movieData.Movie || 
                    movieData;
      
      console.log('Extracted Movie Object:', movie);
      console.log('Movie Title:', movie?.title);
      console.log('Movie Overview:', movie?.overview);

      // Combine movie details with associated data
      const processedMovieDetails = {
        ...movie,
        casts: movieData.casts || movieData.Casts || [],
        videos: movieData.videos || movieData.Videos || [],
        photos: movieData.photos || movieData.Photos || []
      };

      console.log('Processed Movie Details:', processedMovieDetails);
      
      // Validate processed details
      if (!processedMovieDetails.title) {
        console.warn('Movie details missing title');
        alert('Unable to load movie details completely');
      }
      
      setSelectedMovie(processedMovieDetails);
    } catch (error) {
      console.error('Detailed error fetching movie details:', error);
      alert(`Failed to load movie details: ${error.message}`);
    }
  };

  // Edit movie details
  const handleEditMovie = async (updatedMovie) => {
    try {
      const result = await updateMovie(updatedMovie);
      // Update local state
      setMovies(movies.map(movie => 
        movie.id === updatedMovie.id ? result : movie
      ));
      setSelectedMovie(result);
      setIsEditing(false);
    } catch (error) {
      console.error('Error updating movie:', error);
      alert('Failed to update movie');
    }
  };

  // Delete movie and associated data
  const handleDeleteMovie = async (movieId) => {
    try {
      // Delete associated data first
      await deleteCasts(movieId);
      await deletePhotos(movieId);
      await deleteVideos(movieId);
      
      // Delete movie
      await deleteMovie(movieId);
      
      // Update local state
      setMovies(movies.filter(movie => movie.id !== movieId));
      setSelectedMovie(null);
      
      alert('Movie deleted successfully');
    } catch (error) {
      console.error('Error deleting movie:', error);
      alert('Failed to delete movie');
    }
  };

  if (loading) {
    return <div className="movies-loading">Loading movies...</div>;
  }

  if (error) {
    return (
      <div className="movies-error">
        <p>Error: {error}</p>
        <p>Please try refreshing the page or logging in again.</p>
      </div>
    );
  }

  return (
    <div id="movies-container">
      {movies.length === 0 ? (
        <div className="movies-empty">
          <p>No movies found. Start by searching and adding movies!</p>
        </div>
      ) : (
        <>
          <div id="movies-grid">
            {movies.map(movie => (
              <div 
                key={movie.id} 
                className="movies-card" 
                onClick={() => handleMovieClick(movie.id)}
              >
                <img 
                  src={movie.posterPath ? `https://image.tmdb.org/t/p/w500${movie.posterPath}` : '/placeholder.png'} 
                  alt={movie.title} 
                  onError={(e) => { e.target.src = '/placeholder.png'; }}
                />
                <div className="movies-card-info">
                  <h3>{movie.title}</h3>
                </div>
              </div>
            ))}
          </div>

          {selectedMovie && (
            <div id="movies-details-container">
              <div id="movies-details-header">
                <h2>{selectedMovie.title || selectedMovie.name || 'No Title'}</h2>
                <button 
                  id="movies-details-close" 
                  onClick={() => setSelectedMovie(null)}
                >
                  ×
                </button>
              </div>
              
              <img 
                id="movies-details-poster"
                src={
                  selectedMovie.backdropPath 
                    ? `https://image.tmdb.org/t/p/w500${selectedMovie.backdropPath}` 
                    : (
                      selectedMovie.posterPath 
                        ? `https://image.tmdb.org/t/p/w500${selectedMovie.posterPath}` 
                        : '/placeholder.png'
                    )
                } 
                alt={selectedMovie.title || selectedMovie.name || 'Movie Poster'} 
                onError={(e) => { e.target.src = '/placeholder.png'; }}
              />
              
              <p id="movies-details-description">
                {selectedMovie.overview || selectedMovie.description || 'No description available'}
              </p>
              
              <div id="movies-details-sections">
                <div id="movies-details-cast">
                  <h3>Cast</h3>
                  <div className="movies-cast-grid">
                    {selectedMovie.casts && selectedMovie.casts.length > 0 ? (
                      selectedMovie.casts.map(actor => (
                        <div key={actor.id} className="movies-cast-member">
                          <img 
                            src={actor.url ? `https://image.tmdb.org/t/p/w500${actor.url}` : '/placeholder.png'} 
                            alt={actor.name || 'Actor'} 
                            onError={(e) => { e.target.src = '/placeholder.png'; }}
                          />
                          <p>{actor.name || 'Unknown Actor'}</p>
                          <p>{actor.characterName || ''}</p>
                        </div>
                      ))
                    ) : (
                      <p>No cast information available</p>
                    )}
                  </div>
                </div>
                
                <div id="movies-details-media">
                  <h3>Videos</h3>
                  <div className="movies-media-grid">
                    {selectedMovie.videos && selectedMovie.videos.length > 0 ? (
                      selectedMovie.videos.map(video => (
                        <div key={video.id} className="movies-media-item">
                          <a 
                            href={video.url} 
                            target="_blank" 
                            rel="noopener noreferrer"
                          >
                            {video.name || 'View Video'}
                          </a>
                        </div>
                      ))
                    ) : (
                      <p>No videos available</p>
                    )}
                  </div>
                </div>

                <div id="movies-details-photos">
                  <h3>Photos</h3>
                  <div className="movies-photos-grid">
                    {selectedMovie.photos && selectedMovie.photos.length > 0 ? (
                      selectedMovie.photos.map(photo => (
                        <div key={photo.id} className="movies-photo-item">
                          <img 
                            src={`https://image.tmdb.org/t/p/w500${photo.url}`} 
                            alt={photo.description || 'Movie Photo'} 
                            onError={(e) => { e.target.src = '/placeholder.png'; }}
                          />
                        </div>
                      ))
                    ) : (
                      <p>No photos available</p>
                    )}
                  </div>
                </div>
              </div>
              
              <div id="movies-actions">
                <button 
                  className="movies-action-btn movies-edit-btn"
                  onClick={() => setIsEditing(true)}
                >
                  Edit Movie
                </button>
                <button 
                  className="movies-action-btn movies-delete-btn"
                  onClick={() => handleDeleteMovie(selectedMovie.id)}
                >
                  Delete Movie
                </button>
              </div>
            </div>
          )}
        </>
      )}
    </div>
  );
};

export default Movies;