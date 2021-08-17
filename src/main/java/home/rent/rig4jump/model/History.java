package home.rent.rig4jump.model;

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
@Table(name = "history")
@Data
public class History {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long historyId;
  private Long usersId;
  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "equipment_id")
  private Equipment equipment;
  private String nameEq;
  private String profilImg;
  public String getNameEq() {
    return equipment.getNameEq();
  }
  public String getProfilImg() {
    return equipment.getProfilImg();
  }
}