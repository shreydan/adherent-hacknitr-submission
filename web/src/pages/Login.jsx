import React from "react";
import '../css/styles.css'

export default function Login() {
  return (
<<<<<<< HEAD
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
=======
    
    <div className="container">
     <div className="w-100"> 
     <div class="card mx-auto d-flex align-items-center" style={{width: "25rem" , height:"22rem"}}>
  <div class="card-body-1 w-100" style={{backgroundColor:"#0d6efd", marginBottom:"2rem" , color:"white"}}>
    <h2 class="card-title">Join</h2>
    <h2 class="card-title">Now</h2>
  </div>
  <div class="card-body-2">
    <div class="input-group flex-nowrap">
  <span class="input-group-text" id="addon-wrapping">@</span>
  <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="addon-wrapping" style={{width:"20rem"}}/>
</div> 
    <a href="/" class="btn btn-primary"  style={{width:"23rem" , marginTop:"2rem"}}>Join</a>
</div>
</div>
       </div>     
    </div>  
    )
>>>>>>> 6f1c6771dc04cfa5f2e5c779dce8654f7a0bd47e
}
