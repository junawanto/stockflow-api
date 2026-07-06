package com.jun.stockflow.service;

import com.jun.stockflow.dto.request.LoginRequest;
import com.jun.stockflow.dto.request.RegisterRequest;
import com.jun.stockflow.dto.response.AuthResponse;

public interface AuthService {

    void register(RegisterRequest request);

    AuthResponse login(LoginRequest request);

}