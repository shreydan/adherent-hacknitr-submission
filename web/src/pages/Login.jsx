import React, { useState} from "react";
import "../css/styles.css";
import useLocation from "../hooks/useLocation";
import { useFetchCity } from "../hooks/useFetchData";
import { useEffect } from "react";

export default function Login() {


  const [username, setUsername] = useState("");
  
  const updateUsername = (e) => {
    if (e.target.value && e.key === "Enter") {
      setUsername(e.target.value);
      localStorage.setItem("username", e.target.value);
    }
  };

  return (
    <div className="fluid-container login_container d-flex align-items-center justify-content-center flex-column">
      <h1 class="company_name pb-5">Adherent</h1>

      <div className="card login-card p-5 text-center w-25">
        <h2 className="card-title py-5 pt-0">Join Now</h2>

        <input
          type="text"
          class="form-control p-3"
          placeholder="Username"
          aria-label="Username"
          aria-describedby="addon-wrapping"
          onKeyPress={updateUsername}
        />
      </div>
    </div>
  );
}
