package home.rent.rig4jump.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "rentals")
@Data
public class Rentals {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id_re;
  private Long id_us;
  private Long id_eq;

  @Column(name = "start_date")
  private Date start_date;
  @Column(name = "end_date")
  private Date end_date;
  @Column(name = "price")
  private Double price;
}

