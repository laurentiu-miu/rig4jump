package home.rent.rig4jump.repository;

import home.rent.rig4jump.model.Users;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@Tag(name = "4. Users Endpoints")
@RepositoryRestResource
public interface UsersRepository extends JpaRepository<Users, Long> {
  Users findByEmailAndPassword(@Param("email") String email, @Param("password") String password);
}
