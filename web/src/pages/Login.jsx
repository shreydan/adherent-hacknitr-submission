import React from "react";
import '../css/styles.css'

export default function Login() {
  return (
    <div className="login_container fluid-container">
      
        <h2 class="welcome_header mb-5">Welcome to Adherent</h2>
        <div class="card w-25 login_card py-4">
          <div class="card-body">
            <input
              type="text"
              class="form-control px-2 py-3"
              placeholder="Username"
              aria-label="Username"
              aria-describedby="basic-addon1"
            />
            <a href="/" class="btn btn-primary w-100 mt-2 p-2">
              JOIN
            </a>
          </div>
        </div>
      
    </div>
  );
}
