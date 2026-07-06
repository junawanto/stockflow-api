package com.jun.stockflow.service.impl;

import com.jun.stockflow.dto.request.LoginRequest;
import com.jun.stockflow.dto.request.RegisterRequest;
import com.jun.stockflow.dto.response.AuthResponse;
import com.jun.stockflow.service.AuthService;
import org.springframework.stereotype.Service;

@Service
public class AuthServiceImpl implements AuthService {

    @Override
    public void register(RegisterRequest request) {

    }

    @Override
    public AuthResponse login(LoginRequest request) {
        return null;
    }
}