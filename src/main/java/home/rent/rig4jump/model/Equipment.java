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
  private Long equipmentId;
  @Column(name = "name_eq")
  private String nameEq;
  @Column(name = "price")
  private Double price;
  @Column(name = "description")
  private String description;
  @Column(name = "cantitate")
  private Long cantitate;
  @Column(name = "profil_img") //nu stiu
  private String profilImg;
  @Column(name = "capota")
  private String capota;
  @Column(name = "voalura_pr")
  private String voaluraPr;
  @Column(name = "voalura_sc")
  private String voaluraSc;
  @Column(name = "ap_sig")
  private String apSig;
}
