package hu.szaki.dto;

import hu.szaki.entity.User;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class RegisterRequest {

    @NotBlank(message = "Az email megadása kötelező")
    @Email(message = "Érvénytelen email cím")
    private String email;

    @NotBlank(message = "A jelszó megadása kötelező")
    @Size(min = 6, message = "A jelszónak legalább 6 karakter hosszúnak kell lennie")
    private String password;

    @NotBlank(message = "A név megadása kötelező")
    private String nev;

    private String telefon;
    private String varos;

    @NotNull(message = "A szerepkör megadása kötelező")
    private User.Role role;
}
