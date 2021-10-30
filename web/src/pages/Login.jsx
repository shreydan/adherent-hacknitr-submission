import React from "react";
import "../css/styles.css";

export default function Login() {
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
        />

        <a href="/" class="btn btn-primary mt-3">
          JOIN
        </a>
      </div>

    </div>
  );
}
