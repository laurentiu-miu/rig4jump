package home.rent.rig4jump.repository;

import home.rent.rig4jump.model.Rentals;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@Tag(name = "3. Rentals Endpoints")
@RepositoryRestResource
public interface RentalsRepository extends JpaRepository<Rentals, Long> {

}