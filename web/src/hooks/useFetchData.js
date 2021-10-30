import { useEffect, useState } from 'react'
import axios from 'axios'

export function useFetchCity({latitude, longitude}) {

    const [city, setCity] = useState('Your City')
    const [data, setData] = useState()
    const [loading, setLoading] = useState(false)
    const [cityError, setCityError] = useState(null)

    const fetchCity = ({latitude, longitude}) => {
        setLoading(true)
        
    }
    useEffect(() => {
        fetchCity({latitude,longitude})
    }, [city])

    return [city, loading, cityError]

}


export function useFetchPosts() {

    const [posts, setPosts] = useState([])
    const [loading, setLoading] = useState(false)
    const [postsError, setPostsError] = useState(null)

    useEffect(() => {
        setLoading(true)
        axios({
            method: "GET",
            url: "https://adherent.herokuapp.com/api/events",
        }).then(response => {
            setPosts(response.data.results)
            setLoading(false);
        }).catch(error => setPostsError(error))
    }, [posts])

    return [posts, loading, postsError]

}


export function useAdherentPost() {

} 