import React from "react";

function Feed() {
  return (
    <div classNameName="fluid-container">
      <div className="row gx-0 p-5">
        <div className="col-md-7 col-xs-12 col-md-offset-3">
          <div className="panel">
            <div className="panel-heading">
              <h2 className="panel-title mb-5">Raipur</h2>
            </div>

            <div class="input-group mb-5">
              <div class="form">
                <input
                  id="search-input"
                  type="search"
                  class="form-control "
                  placeholder="Search your locality.."
                />
              </div>
              <button type="submit" class="btn btn-primary">
                Search
              </button>
            </div>

            <ul className="list-group list-group-flush list-group-full w-75">
              <li className="list-group-item border-0 p-0">
                <div className="media">
                  <div className="media-body">
                    <h5 className="media-heading">@RamonDunn</h5>
                    <small className="text-muted d-flex">Just now</small>
                    <small className="text-muted d-flex">Mahaveer Nagar</small>
                    <div>
                    Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in.
                    </div>
                  </div>
                </div>
                <hr className="margin-bottom-10" />
              </li>
              <li className="list-group-item border-0 p-0">
                <div className="media">
                  <div className="media-body">
                    <h5 className="media-heading">@RamonDunn</h5>
                    <small className="text-muted d-flex">Just now</small>
                    <small className="text-muted d-flex">Mahaveer Nagar</small>
                    <div>
                    Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in.
                    </div>
                  </div>
                </div>
                <hr className="margin-bottom-10" />
              </li>
              <li className="list-group-item border-0 p-0">
                <div className="media">
                  <div className="media-body">
                    <h5 className="media-heading">@RamonDunn</h5>
                    <small className="text-muted d-flex">Just now</small>
                    <small className="text-muted d-flex">Mahaveer Nagar</small>
                    <div>
                    Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in.
                    </div>
                  </div>
                </div>
                <hr className="margin-bottom-10" />
              </li>
              <li className="list-group-item border-0 p-0">
                <div className="media">
                  <div className="media-body">
                    <h5 className="media-heading">@RamonDunn</h5>
                    <small className="text-muted d-flex">Just now</small>
                    <small className="text-muted d-flex">Mahaveer Nagar</small>
                    <div>
                    Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in.
                    </div>
                  </div>
                </div>
                <hr className="margin-bottom-10" />
              </li>
              <li className="list-group-item border-0 p-0">
                <div className="media">
                  <div className="media-body">
                    <h5 className="media-heading">@RamonDunn</h5>
                    <small className="text-muted d-flex">Just now</small>
                    <small className="text-muted d-flex">Mahaveer Nagar</small>
                    <div>
                    Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in. Lorem ipsum Veniam aliquip culpa laboris minim tempor
                      labore commodo officia veniam non in in in.
                    </div>
                  </div>
                </div>
                <hr className="margin-bottom-10" />
              </li>
            </ul>
          </div>
        </div>

        <div className="col-md-5">
          <div className="post">
            <div className="post-heading">
              <h2 className="post-title">Post</h2>
            </div>
            <form action="">
              <div className="form-group my-5">
                <h5 for="title" class="mb-3">Title</h5>
                <input type="text" class="form-control" id="title" placeholder="Enter post title.." />
              </div>
              <div className="form-group my-5">
                <h5 for="content" class="mb-3">Content</h5>
                <textarea type="textarea" class="form-control" id="content" placeholder="Enter post content.." rows="5"/>
              </div>
              <button type="submit" class="btn btn-primary w-50">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Feed;
