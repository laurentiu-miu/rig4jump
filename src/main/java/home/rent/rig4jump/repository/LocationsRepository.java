package home.rent.rig4jump.repository;

import home.rent.rig4jump.model.Locations;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@Tag(name = "5. Locations Endpoints")
@RepositoryRestResource
public interface LocationsRepository extends JpaRepository<Locations, Long> {

}
