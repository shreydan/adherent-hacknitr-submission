import React, { useState, useEffect } from 'react'


export function checkLogin() {
    return localStorage.getItem('username') ? true : false
}

export function useLogin(name) {

    const [username, setUsername] = useState(null)

    if(!localStorage.getItem('username')) {
        localStorage.setItem('username',username)
        setUsername(username)
    }

}