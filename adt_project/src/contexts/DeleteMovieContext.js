import React, { createContext, useContext } from "react";
import axios from "axios";
import { useUser } from "./UserContext";

const DeleteMovieContext = createContext(null);

export const DeleteMovieProvider = ({ children }) => {
  const { accessToken } = useUser();

  const deleteMovie = async (movieId) => {
    try {
      const response = await axios.delete(`/admin/movies/${movieId}`, {
        headers: {
          Authorization: `Bearer ${accessToken}`,
          "Content-Type": "application/json",
        },
      });
      return { success: true, data: response.data };
    } catch (error) {
      console.error("Error deleting movie:", error);
      throw error;
    }
  };

  const deleteCasts = async (movieId, castIds) => {
    try {
      const deletePromises = castIds.map((castId) =>
        axios.delete(`/admin/movies/${movieId}/casts/${castId}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
            "Content-Type": "application/json",
          },
        })
      );
      await Promise.all(deletePromises);
    } catch (error) {
      console.error("Error deleting casts:", error);
      throw error;
    }
  };

  const deletePhotos = async (movieId, photoIds) => {
    try {
      const deletePromises = photoIds.map((photoId) =>
        axios.delete(`/admin/movies/${movieId}/photos/${photoId}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
            "Content-Type": "application/json",
          },
        })
      );
      await Promise.all(deletePromises);
    } catch (error) {
      console.error("Error deleting photos:", error);
      throw error;
    }
  };

  const deleteVideos = async (movieId, videoIds) => {
    try {
      const deletePromises = videoIds.map((videoId) =>
        axios.delete(`/admin/movies/${movieId}/videos/${videoId}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
            "Content-Type": "application/json",
          },
        })
      );
      await Promise.all(deletePromises);
    } catch (error) {
      console.error("Error deleting videos:", error);
      throw error;
    }
  };

  return (
    <DeleteMovieContext.Provider
      value={{
        deleteMovie,
        deleteCasts,
        deletePhotos,
        deleteVideos,
      }}
    >
      {children}
    </DeleteMovieContext.Provider>
  );
};

export const useDeleteMovie = () => {
  const context = useContext(DeleteMovieContext);
  if (context === null) {
    throw new Error("useDeleteMovie must be used within a DeleteMovieProvider");
  }
  return context;
};
