package home.rent.rig4jump.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "rentals")
@Data
public class Rentals {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long rentalsId;
  private Long usersId;
  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "equipment_id")
  private Equipment equipment;

  @Column(name = "startDate")
  private Date startDate;
  @Column(name = "endDate")
  private Date endDate;
  @Column(name = "price")
  private Double price;

  public String getNameEq() {
    return equipment.getNameEq();
  }
  public String getProfilImg() {
    return equipment.getProfilImg();
  }
}

