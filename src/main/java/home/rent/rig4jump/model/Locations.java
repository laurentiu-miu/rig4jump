package home.rent.rig4jump.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "locations")
@Data
public class Locations {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id_lo;
  @Column(name = "name_lo")
  private String name_lo;
  @Column(name = "phone_lo")
  private String phone_lo;
  @Column(name = "adress_lo")
  private String adress_lo;
  @Column(name = "email_lo")
  private String email_lo;
  @Column(name = "program")
  private String program;
  @Column(name = "facilities")
  private String facilities;
  @Column(name = "link")
  private String link;
}
