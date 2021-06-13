package by.shilay.app.usermanagement.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "user_accounts")
public class UserAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Pattern(regexp = "^[a-zA-Z]{1,16}$", message = "Only latin characters are allowed (min=1, max=16).")
    @Column(name = "first_name")
    private String firstName;

    @Pattern(regexp = "^[a-zA-Z]{1,16}$", message = "Only latin characters are allowed (min=1, max=16).")
    @Column(name = "last_name")
    private String lastName;

    @Pattern(regexp = "^[a-zA-Z]{3,16}$", message = "Only latin characters are allowed (min=3, max=16).")
    @Column(name = "username")
    private String username;

    @Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{3,16}$",
            message = "Only latin characters and digits are allowed (min=3, max=16). At least one digit and one character.")
    @Column(name = "password")
    private String password;

    @Column(name = "role")
    private String role;

    @Column(name = "status")
    private String status;

    @Column(name = "created_at")
    private LocalDate createdAt;
}
