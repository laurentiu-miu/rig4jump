package home.rent.rig4jump.web;

import home.rent.rig4jump.model.UserLoginCredentials;
import home.rent.rig4jump.model.Users;
import home.rent.rig4jump.repository.UsersRepository;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.Optional;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "4. Users")
@RestController
public class RegistrationResource {
    private final UsersRepository usersRepository;
    private final PasswordEncoder passwordEncoder;

  public RegistrationResource(UsersRepository usersRepository,
      PasswordEncoder passwordEncoder) {
    this.usersRepository = usersRepository;
    this.passwordEncoder = passwordEncoder;
  }

  @PostMapping("/registration")
  @ResponseStatus(code = HttpStatus.CREATED)
  public void register(@RequestBody Users users) {
    String password = users.getPassword();
    String ecodedPassword = passwordEncoder.encode(password);
    users.setPassword(ecodedPassword);
    usersRepository.save(users);
  }

  @PostMapping("/login")
  public ResponseEntity<?> findByEmailAndPassword(@RequestBody UserLoginCredentials userLoginCredentials) {
    Users user = usersRepository.findByEmail(userLoginCredentials.getEmail());
    if(user == null){
      return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    } else {
      if(passwordEncoder.matches(userLoginCredentials.getPassword(), user.getPassword())) {
        user.setPassword(null);
        return ResponseEntity.of(Optional.of(user));
      } else {
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
      }
    }
  }
}
