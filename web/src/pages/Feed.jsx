import React from "react";

function Feed() {
  return (

    <div classNameName="container">
    <div className="row">
<div className="col-md-7 col-xs-12 col-md-offset-3">
<div className="panel">
<div className="panel-heading" style={{marginTop:"1.5rem" ,marginBottom:"1.5rem",marginLeft:"2rem" }}>
  <h3 className="panel-title" style={{color: "white"}}>Raipur</h3>
</div>

<div class="input-group">
<div class="form" style={{marginLeft:"30px"}}>
<input id="search-input" type="search" class="form-control" placeholder="Search your locality.." style={{width:"18rem" , backgroundColor:"#2c2b2b"}}/>
</div>
<button type="submit" class="btn btn-primary" style={{backgroundColor:"#cd35cd" , width:"5rem"}} >
Search
</button>
</div>

  <ul className="list-group list-group-flush list-group-full" style={{marginLeft:"1rem"}}>
    <li className="list-group-item border-0"  style={{color: "white" , backgroundColor: "#414141" }}>
      <div className="media">
        <div className="media-left">
          <a className="avatar avatar-online" href="/">
          </a>
        </div>
        <div className="media-body">
          <small className="text-muted pull-right">Just now</small>
          <h4 className="media-heading">@Ramon Dunn</h4>
          <div>Lorem ipsum Veniam aliquip culpa laboris minim tempor labore
            commodo officia veniam non in in in.</div>
        </div>
      </div>
      <hr className="margin-bottom-10"/>
    </li>
    <li className="list-group-item border-0"  style={{color: "white" , backgroundColor: "#414141" }}>
      <div className="media">
        <div className="media-left">
          <a className="avatar avatar-busy" href="/">
          </a>
        </div>
        <div className="media-body">
          <small className="text-muted pull-right">38 minutes ago</small>
          <h4 className="media-heading">@Scott Sanders</h4>
          <div>Lorem ipsum Laborum sit laborum cillum proident dolore culpa
            reprehenderit qui enim labore do mollit in.</div>
        </div>
      </div>
      <hr className="margin-bottom-10"/>
    </li>
    <li className="list-group-item border-0" style={{color: "white " , backgroundColor: "#414141" }}>
      <div className="media">
        <div className="media-left">
          <a className="avatar avatar-online" href="/">
          </a>
          
        </div>
        <div className="media-body">
          <small className="text-muted pull-right">2 hours ago</small>
          <h4 className="media-heading">@Nina Wells</h4>
          <div>Lorem ipsum Culpa mollit ex mollit magna dolore dolore dolore
            tempor velit magna enim ad dolore dolore dolore.</div>
        </div>
      </div>
    </li>
  </ul>
</div>
</div>

<div className="col-md-5 ">
<div className="post" style={{color:"white"}}>
<div className="post-heading">
<h3 className="post-title" style={{ marginTop:"1.5rem"}}>Post</h3>
</div>
<div className="post-content" style={{marginTop:"2rem"}}>
<label htmlfor="exampleFormControlTextarea1" className="form-label ">Content:</label>
<input type="text" className="form-control" placeholder="type here..." style={{backgroundColor:"#2c2b2b" , width:"28rem" , height:"12rem" , color:"white"}}/>
</div>
<button type="submit" className="btn" style={{backgroundColor:"#cd35cd" , color:"white" , marginTop:"1.5rem" , borderRadius:"1rem" }}>Post update</button>
</div>
</div>

</div>
</div>

  )
}

export default Feed;
