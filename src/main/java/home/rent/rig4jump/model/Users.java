package home.rent.rig4jump.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "users")
@Data
public class Users {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id_us;
  @Column(name = "name_us")
  private String name_us;
  @Column(name = "email")
  private String email;
  @Column(name = "password")
  private String password;
  @Column(name = "phone")
  private String phone;
  @Column(name = "credits")
  private Double credits;
}
