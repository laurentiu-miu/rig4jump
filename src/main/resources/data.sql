DROP TABLE IF EXISTS equipment;

CREATE TABLE equipment (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL,
  pret DOUBLE DEFAULT NULL,
  cantitate BIGINT DEFAULT NULL
);

INSERT INTO equipment (name, description, pret, cantitate) VALUES
('fes', 'de pus in cap', 12.30, 10),
('pantaloni', 'de imbracat', 10.00, 4),
('adidasi', 'de pus in picioare', 100, 100);