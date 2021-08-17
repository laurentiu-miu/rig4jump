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
  private Long locationsId;
  @Column(name = "name_lo")
  private String nameLo;
  @Column(name = "phone_lo")
  private String phoneLo;
  @Column(name = "adress_lo")
  private String adressLo;
  @Column(name = "email_lo")
  private String emailLo;
  @Column(name = "program")
  private String program;
  @Column(name = "facilities")
  private String facilities;
  @Column(name = "link")
  private String link;
}
