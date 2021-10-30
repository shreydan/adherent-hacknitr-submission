import React from "react";

export default function Login() {
  return (
    
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
}
