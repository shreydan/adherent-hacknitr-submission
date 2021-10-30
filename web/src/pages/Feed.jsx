import React, { useState, useEffect } from "react";
import axios from "axios";
import { getCityfromStorage } from "../hooks/useLogin";

const PostItem = (props) => {

  const {
    username,
    date_time,
    area_name,
    title,
    content,
    city_name,
  } = props.data_item;

  return (
    <li className="list-group-item border-0 p-0">
      <div className="media">
        <div className="media-body">
          <div className="media-heading">{username}</div>
          <small className="text-muted d-flex">{date_time}</small>
          <small className="text-muted d-flex">
            {area_name}, {city_name}
          </small>
          <h5>{title}</h5>
          <div>{content}</div>
        </div>
      </div>
      <hr className="margin-bottom-10" />
    </li>
  );
};

function Feed() {
  const [data, setData] = useState([]);
  const [city, setCity] = useState("Your City");
  const [filtered, setFilteredData] = useState([]);

  const filterItems = (e) => {


    if(e.target.value !== '') {
      setFilteredData(filtered.filter((item) => {
        const item_name = item.area_name.toLowerCase()
        if(item_name.includes(e.target.value)) 
          return true
        else
          return false
      }))
    }
    
  }

  useEffect(() => {
    axios({
      method: "GET",
      url: "https://adherent.herokuapp.com/api/events",
    })
      .then((response) => {
        setData(response.data.results);
        setFilteredData(data)
        setCity(response.data.results[0]["city_name"]);
      })
      .catch((error) => console.error(error));
  }, [data]);

  return (
    <div className="fluid-container">
      <div className="row gx-0 p-5">
        <div className="col-md-7 col-xs-12 col-md-offset-3">
          <div className="panel">
            <div className="panel-heading">
              <h2 className="panel-title mb-5">{city}</h2>
            </div>

            <div className="input-group mb-5">
              <div className="form">
                <input
                  id="search-input"
                  type="search"
                  className="form-control "
                  placeholder="Search your locality.."
                  onKeyPress={filterItems}
                />
              </div>
              <button type="submit" className="btn btn-primary">
                Search
              </button>
            </div>

            <ul className="list-group list-group-flush list-group-full w-75">

              {
                filtered.map((data_item, index) => (
                  <PostItem data_item={data_item} key={index} />
                ))
              }

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
                <h5 for="title" className="mb-3">
                  Title
                </h5>
                <input
                  type="text"
                  className="form-control"
                  id="title"
                  placeholder="Enter post title.."
                />
              </div>
              <div className="form-group my-5">
                <h5 for="content" className="mb-3">
                  Content
                </h5>
                <textarea
                  type="textarea"
                  className="form-control"
                  id="content"
                  placeholder="Enter post content.."
                  rows="5"
                />
              </div>
              <button type="submit" className="btn btn-primary w-50">
                Submit
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Feed;
