import { useState, useEffect } from 'react'


export default function useLocation() {
    const [coordinates, setCoordinates] = useState({
        longitude: null,
        latitude: null
    })

    const [error, setError] = useState(null)

    const getLocation = () => {
        if(!navigator.geolocation) {
            setError('Location Service Unavailable')
        }
        else {
            navigator.geolocation.getCurrentPosition((position) => {
                setError(null)
                setCoordinates({
                    latitude: position.coords.latitude,
                    longitude: position.coords.longitude
                })
                
            }, (error) => {
                console.error(error)
                setError('There was a problem retrieving location, try again later')
            })
        }
    }

    useEffect(()=>{
        getLocation()
    }, [coordinates])

    return {
        coordinates: coordinates,
        error: error
    }

}