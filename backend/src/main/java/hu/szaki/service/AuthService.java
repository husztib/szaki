package hu.szaki.service;

import hu.szaki.dto.AuthResponse;
import hu.szaki.dto.LoginRequest;
import hu.szaki.dto.RegisterRequest;
import hu.szaki.entity.User;
import hu.szaki.repository.UserRepository;
import hu.szaki.security.JwtTokenProvider;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtTokenProvider tokenProvider;

    public AuthResponse register(RegisterRequest request) {
        if (userRepository.existsByEmail(request.getEmail())) {
            throw new IllegalArgumentException("Ez az email cím már regisztrálva van");
        }

        User user = User.builder()
                .email(request.getEmail())
                .passwordHash(passwordEncoder.encode(request.getPassword()))
                .nev(request.getNev())
                .telefon(request.getTelefon())
                .varos(request.getVaros())
                .role(request.getRole())
                .build();

        user = userRepository.save(user);
        String token = tokenProvider.generateToken(user.getId(), user.getEmail());
        return toAuthResponse(token, user);
    }

    public AuthResponse login(LoginRequest request) {
        User user = userRepository.findByEmail(request.getEmail())
                .orElseThrow(() -> new IllegalArgumentException("Hibás email vagy jelszó"));

        if (!passwordEncoder.matches(request.getPassword(), user.getPasswordHash())) {
            throw new IllegalArgumentException("Hibás email vagy jelszó");
        }

        if (!user.isAktiv()) {
            throw new IllegalArgumentException("A fiók inaktív");
        }

        String token = tokenProvider.generateToken(user.getId(), user.getEmail());
        return toAuthResponse(token, user);
    }

    public AuthResponse.UserDto getCurrentUser(User user) {
        return new AuthResponse.UserDto(user.getId(), user.getEmail(), user.getNev(), user.getRole());
    }

    private AuthResponse toAuthResponse(String token, User user) {
        return new AuthResponse(token, new AuthResponse.UserDto(
                user.getId(), user.getEmail(), user.getNev(), user.getRole()));
    }
}
