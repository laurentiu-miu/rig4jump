package home.rent.rig4jump.repository;

import home.rent.rig4jump.model.History;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@Tag(name = "2. History Endpoints")
@RepositoryRestResource
public interface HistoryRepository extends JpaRepository<History, Long> {

}

