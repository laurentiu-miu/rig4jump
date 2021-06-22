package home.rent.rig4jump.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "history")
@Data
public class History {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id_hi;
  private Long id_us;
  private Long id_eq;
}