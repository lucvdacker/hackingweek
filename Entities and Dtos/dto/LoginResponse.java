package com.example.dto;

public class LoginResponse {

    private String token;

    private long expiresIn;

    public String getToken() {
        return token;
    }

    public void setExpiresIn(long expiresIn) {
        this.expiresIn = expiresIn;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
