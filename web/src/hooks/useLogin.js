import React, { useState, useEffect } from "react";
import useLocation from "./useLocation";
import { useFetchCity } from "./useFetchData";

export function checkLogin() {
  return localStorage.getItem("username") ? true : false;
}

export function useLogin() {
  const { coordinates, error } = useLocation();
  const [city, loading, cityError] = useFetchCity(coordinates);

  if (error || cityError) {
    console.error(error, cityError);
    window.alert("Error. Try again with proper permissions and internet");
  }

  if (error === null && cityError === null) {
    if (!localStorage.getItem("city")) {
      localStorage.setItem("city", city);
    }
  }
}

export function getCityfromStorage() {
  return localStorage.getItem("city");
}
