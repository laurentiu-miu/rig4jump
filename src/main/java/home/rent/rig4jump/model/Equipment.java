package home.rent.rig4jump.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "equipment")
@Data
public class Equipment {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id_eq;
  @Column(name = "name_eq")
  private String name_eq;
  @Column(name = "price")
  private Double price;
  @Column(name = "description")
  private String description;
  @Column(name = "cantitate")
  private Long cantitate;
  @Column(name = "profil_img") //nu stiu
  private String profil_img;
  @Column(name = "capota")
  private String capota;
  @Column(name = "voalura_pr")
  private String voalura_pr;
  @Column(name = "voalura_sc")
  private String voalura_sc;
  @Column(name = "ap_sig")
  private String ap_sig;
}
