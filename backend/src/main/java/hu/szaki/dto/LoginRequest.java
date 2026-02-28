package hu.szaki.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class LoginRequest {

    @NotBlank(message = "Az email megadása kötelező")
    @Email(message = "Érvénytelen email cím")
    private String email;

    @NotBlank(message = "A jelszó megadása kötelező")
    private String password;
}
