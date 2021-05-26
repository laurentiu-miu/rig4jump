package home.rent.rig4jump.repository;

import home.rent.rig4jump.model.Equipment;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@Tag(name = "1. Equipment Endpoints")
@RepositoryRestResource
public interface EquipmentRepository extends JpaRepository<Equipment, Long> {
}
