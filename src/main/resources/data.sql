DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS history;
DROP TABLE IF EXISTS rentals;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS equipment;


CREATE TABLE equipment
(
    equipment_id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_eq     VARCHAR(250) NOT NULL,
    description TEXT,
    capota      VARCHAR(250) NOT NULL,
    voalura_pr  VARCHAR(250) NOT NULL,
    voalura_sc  VARCHAR(250) NOT NULL,
    ap_sig      VARCHAR(250) NOT NULL,
    price       DOUBLE DEFAULT NULL,
    cantitate   BIGINT DEFAULT NULL,
    profil_img  TEXT
);


CREATE TABLE users
(
    users_id    INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_us  VARCHAR(60) NOT NULL,
    email    VARCHAR(50) NOT NULL,
    password VARCHAR(30) NOT NULL,
    phone    VARCHAR(50) NOT NULL,
    credits  DOUBLE DEFAULT NULL
);



CREATE TABLE rentals
(
    rentals_id      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    users_id      INT NOT NULL,
    equipment_id      INT NOT NULL,
    start_date DATETIME,
    end_date   DATETIME,
    price      DOUBLE DEFAULT NULL,
    FOREIGN KEY (users_id) REFERENCES users (users_id),
    FOREIGN KEY (equipment_id) REFERENCES equipment (equipment_id)
);



CREATE TABLE history
(
    history_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    users_id INT NOT NULL,
    equipment_id INT NOT NULL,
    FOREIGN KEY (users_id) REFERENCES users (users_id),
    FOREIGN KEY (equipment_id) REFERENCES equipment (equipment_id)
);



CREATE TABLE locations
(
    locations_id      INT AUTO_INCREMENT PRIMARY KEY,
    name_lo    VARCHAR(250) NOT NULL,
    phone_lo   VARCHAR(30)  NOT NULL,
    email_lo   VARCHAR(50),
    adress_lo  VARCHAR(250) NOT NULL,
    program    VARCHAR(250) NOT NULL,
    facilities VARCHAR(500) NOT NULL,
    link       TEXT
);

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Velocity 79',
        'The Velocity''s rigid crossbraced structure and extremely responsive controls make it a long-standing staple in the high-performance canopy piloting community. Incredibly clean aerodynamics give this powerful wing a wide speed range and amazing performance opportunities when in the right hands. From opening to landing this is a very capable but very demanding canopy.',
        'V303 Micron', 'Velocity 79', 'Smart 99', 'Expert Cypres 2', 20, 50,
        'http://www.chutingstar.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/u/p/uptvectorv3.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Sabre 135',
        'The Sabre2 is a powerful semi-elliptical 9-cell canopy that is a great choice for current intermediate and experienced jumpers. Our most popular all-around canopy, the Sabre2 feels aggressive at higher wing loadings but is quite tame when lightly loaded. This canopy is best known for its powerful flare and wide speed range. With neat packing and proper deployment technique, Sabre2 openings are consistently soft and predictable. The Sabre2 has a steeper glide and a longer recovery arc than the flatter gliding Pulse or Stiletto and is an excellent choice for those wanting a bit more aggressive piloting experience but are not interested in the demands \nof the Katana or Velocity.',
        'V309 Micron', 'Sabre 135', 'OP 143', 'Expert Cypres 2', 20, 50,
        'https://cdn1.bigcommerce.com/n-ww20x/5au1rcr/products/249/images/472/curv_56853.1394259683.1280.1280__40408.1395707499.380.380.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Crossfire 119',
        'The Crossfire. NZ Aerosports'' identity. A truly unique design.This is how we do justice to the Crossfire legend.Unparalleled openings, a longer recovery arc and incredible swoop distance combine in a 9-cell fully elliptical wing that''s 100% devoted to the art of having fun. If you''re ready to step it up a notch from your Safire or want to upgrade your Crossfire 2, the Crossfire 3 is for you. It''s time to take to the sky the way you were meant to, on a 9-cell sports machine that keeps it as real as you do.',
        'V306 Micron', 'Crossfire 119', 'Smart LPV 150', 'Expert Cypres 2', 20, 50,
        'http://cdn.shopify.com/s/files/1/0860/5100/products/vector_3_grande.jpg?v=1455562206');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Safire 139',
        'The ultimate gateway wing, the Safire 3 is the most modern mainstream all-rounder canopy to hit the market. She’s not just different. She’s been engineered to fly better. More efficiently. More responsively. For the intermediate jumper she will make your flying experience come alive with quick turns and a powerful flare, but loaded lightly she is the vehicle to carry any beginner or the most nervous canopy pilot to the ground safely. Plus you''ll be looking sharp in the sky with this entrance level wing that has all the bells and whistles of an advanced sports canopy.',
        'V310 Micron', 'Safire 139', 'PD 126', 'Expert Cypres 2', 20, 50,
        'http://www.chutingstar.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/u/p/upt_vector_v3.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Omni 109',
        'Omni, the ultimate 7-cell tapered canopy. This all purpose canopy offers soft on-heading openings, predictable flight characteristics, light toggle and riser pressure, and greater flare than any other 7-cell design. The Omni is ideal for intermediate and or experienced skydivers, usable for all facets of modern skydiving.',
        'V316 Micron', 'Omni 109', 'Micro Raven 120', 'Expert Cypres 2', 20, 50,
        'https://cdn.shopify.com/s/files/1/0860/5100/products/V3_grande.jpg?v=1455562206');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Mamba 124',
        'The Aerodyne Mamba is the ultimate high performance 9 cell elliptical designed with the more experienced pilot in mind that isn''t looking for all the costs and pack volume issues associated with cross braced canopies. It is intended to compete with canopies like the Katana and Crossfire.',
        'V328 Micron', 'Mamba 124', 'Speed 135', 'Expert Cypres 2', 20, 50,
        'https://freefalltokyo.files.wordpress.com/2017/08/img_20170730_124814-e1501823036931.jpg?w=620');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Pilot 168',
        'Ask anyone who has jumped a Pilot and they will tell you the openings are the best you can get, it is fun to fly and easy to land. Since its introduction the Pilot has charmed beginners and experienced jumpers alike.The Pilot will surprise you with its stable flight, responsive turns and comfortable flare.With a lighter wing loading the Pilot is the ideal choice for those who downsize after initial training and buy their first canopy.Whether you deploy following RW, VFS or wing suit flight, with a camera mounted on your helmet or a weight belt around the waist, the Pilot will put you in the saddle in the most comfortable and reliable way.',
        'V350 Micron', 'Pilot 168', 'PD 176', 'Expert Cypres 2', 20, 200,
        'https://cdn2.flyyourbody.com/431-thickbox_default/vector-3-m-series.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Spectre 190',
        'The lightly-tapered 7-cell Spectre is one of the most popular canopies we have ever produced. A surprisingly flat glide and soft on-heading openings (with plenty of snivel!) make the Spectre the canopy of choice for the professional cameraman or the everyday wingsuiter. The Spectre is also known for its smooth, progressive response on the toggles. If your priority is predictability, the Spectre is your canopy.',
        'V353 Micron', 'Spectre 190', 'R-max 188', 'Expert Cypres 2', 20, 200,
        'http://www.chutingstar.com/media/catalog/product/cache/1/image/1200x/040ec09b1e35df139433887a97daa66f/u/p/upt_jc_stitching_1.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Omega 209',
        'The ICARUS Omega is a 7-cell, lightly elliptical, zero porosity, RW canopy. It has been designed as a hassle-free all rounder; suitable for RW, demo jumping, fun accuracy and fun CRW. It is super easy to use, with delicious ''7-cell'' openings, easy packing and gentle landings.The ICARUS Omega is a truly elliptical canopy, but the shaping in it is very light. The planform has been optimized between enhancing the canopy performance and feel, yet maintaining easy flight characteristics and consistent controlled openings. The Omega''s cells vary in width across the canopy, to maintain a constant cell aspect ratio and to consistently control the airfoil shape across the canopy.\n As it''s a 7-cell of conventional construction, the pack volume is very small.',
        'V355 Micron', 'Omega 209', 'Techno 190', 'Expert Cypres 2', 20, 200,
        'https://i.pinimg.com/originals/63/aa/41/63aa4175703cd64295616b6c6960db49.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Equinox 239',
        'Recognizing the learning issues canopy students face when they start their journey from AFF to their first canopy, ICARUS Canopies has developed the EQUINOX specifically to allow a safer canopy piloting learning process. With a carefully balanced rectangular planform, the EQUINOX provides a soft but consistent short snivel deployment both with spring loaded and hand deployed pilot chutes. Its easy but lively handling at student wing loading airspeeds and high control range provides the student a great learning experience. EQUINOX forgiving flare characteristics complete an ideal learning tool for drop zones and flight schools.',
        'V380 Micron', 'Equinox 239', 'Smart 270', 'Expert Cypres 2', 20, 300,
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4RiWxHjlIKk5HCW6iurDbBeZMqRLSLLHru-89SjwBFNeuZMEg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Solo 250',
        'The Solo student canopy can give you that confidence. Strong where it needs to be, forgiving when it must be, the Solo provides all the characteristics needed for successful student training.The Solo is durable, with extra reinforcement, while being easy to pack. Its opening, flight and landing characteristics have been tailored to allow you to teach your students proper piloting skills. As the student becomes more experienced and is prepared to downsize, the Solo’s design allows for a natural transition to our Pilot canopy.',
        'Icon Student', 'Solo 250', 'Smart 270', 'Expert Cypres 2', 20, 300,
        'https://www.flyaerodyne.com/wp-content/uploads/2017/03/ICON-V-03-631x1024.png');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Solo 270',
        'The Solo student canopy can give you that confidence. Strong where it needs to be, forgiving when it must be, the Solo provides all the characteristics needed for successful student training.The Solo is durable, with extra reinforcement, while being easy to pack. Its opening, flight and landing characteristics have been tailored to allow you to teach your students proper piloting skills. As the student becomes more experienced and is prepared to downsize, the Solo’s design allows for a natural transition to our Pilot canopy.',
        'Icon Student', 'Solo 270', 'Smart 250', 'Expert Cypres 2', 20, 300,
        'https://www.flyaerodyne.com/wp-content/uploads/2017/03/ICON_0-02-631x1024.png');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Manta 290',
        'The ZP Manta line of canopies are probably the best all around Student Canopies on the market today! The ZP Manta was designed to be nearly impossible to stall and to recover from slow flight with minimum forward surge. This helps to insure the unpredictable student will have a safe landing. For the Drop Zone owners that demand Quality and Reliably, to the student / novice skydivers that deserve nothing less. The ZP Manta should provide drop zones with thousands of safe landings.',
        'Avalon', 'Manta 290', 'Sharpchuter 245-R', 'Expert Cypres 2', 20, 300,
        'http://www.avalonskydive.com/site/public/images/gallery/1/accuracy2.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Jalbert Parafoil 252',
        'Ideal for competitions and demos alike. It has dominated National, World, and Military competitions over any other canopy. A veteran of two decades of demanding use, it is the only parachute to dominate the accuracy event in sport parachuting. It is rare to find a National or Military Accuracy Team that does not use the Jalbert Parafoil. If you’re serious it is the only logical choice.Which ever you''re into Accuracy, Demo, or Paraski the Jalbert Parafoil is the most reliable and accurate canopy in the world for over two decades.\nStable in turbulent and thermal conditions. Built to last with predictable stall characteristics and a slow rate of decent make this canopy the choice of champions.',
        'Javelin 7', 'Jalbert Parafoil 252', 'Fury 220', 'Expert Cypres 2', 15, 300,
        'http://www.chutingstar.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/j/a/javelin_odyssey_new_container.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Jalbert Parafoil 282',
        'Ideal for competitions and demos alike. It has dominated National, World, and Military competitions over any other canopy. A veteran of two decades of demanding use, it is the only parachute to dominate the accuracy event in sport parachuting. It is rare to find a National or Military Accuracy Team that does not use the Jalbert Parafoil. If you’re serious it is the only logical choice.Which ever you''re into Accuracy, Demo, or Paraski the Jalbert Parafoil is the most reliable and accurate canopy in the world for over two decades.\nStable in turbulent and thermal conditions. Built to last with predictable stall characteristics and a slow rate of decent make this canopy the choice of champions.',
        'Mirage G-3', 'Jalbert Parafoil 282', 'Sharpchuter 245-R', 'Vigil', 15, 300,
        'https://miragesys.com/wp-content/uploads/Stock/Standard-Series/MX/97602992-back.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Hop 330',
        'The HOP 330 tandem main canopy was designed and developed in cooperation with one of Australia’s leading drop zones - Sunshine Coast Skydivers \nThe result is a New Generation Tandem Parachute. In just five years, the HOP 330 is quickly gaining world renown as a canopy which always provides soft openings and great landings. A canopy which is exciting, reliable, comfortable, long lasting, economical, and ‘gets you home’ – even from a bad spot.',
        'Upt Sigma', 'Hop 330', 'Sigma 330', 'Tandem Cypres 2', 40, 50,
        'http://www.chutingstar.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/u/p/upt_sigma_14.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Sigma 370',
        'All sizes of the UPT PD Sigma Tandem Main Canopy have an approved gross weight limit of 500 lbs., which is approximately 50 pounds of gear and 450 pounds of jumper weight.',
        'Upt Sigma', 'Sigma 370', 'VR 360', 'Tandem Cypres 2', 40, 50,
        'https://www.jump-tandem.cz/upload/Tandemrigs.jpg');

INSERT INTO equipment (name_eq, description, capota, voalura_pr, voalura_sc, ap_sig, price,
                       cantitate, profil_img)
VALUES ('Icarus 330',
        'The Icarus Tandem is the wing that launched the brand. It’s about reliability, durability, and long-lasting craftsmanship. This wing meets the demands of all tandem pilots, giving total serenity in flight without losing the feeling of freedom. She’s for those, like you, who are not contented only with flying, but look to share the pleasure of flying. With unparalleled investment value, a low malfunction rate and flight characteristics instructors love, the Icarus Tandem is the toughest, friendliest and safest tool for your commercial tandem operation.',
        'Upt Sigma', 'Icarus 330', 'Sigma 330', 'Tandem Cypres 2', 40, 50,
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWdVs6dH5Ahk4PKIhXka6Wl-7uME-6Z7_T822P00aG_BJzoApcow');



INSERT INTO users (name_us, email, password, phone, credits)
VALUES ('Alex Nicolau', 'nicolau@gmail.com', 'alabala01', '+40752312400', '100');
INSERT INTO users (name_us, email, password, phone, credits)
VALUES ('Andreea-Oana Hulub', 'ahulub@gmail.com', 'alabala02', '+40752312500', '100');
INSERT INTO users (name_us, email, password, phone, credits)
VALUES ('Bogdan Boeru ', 'boerub@yahoo.com', 'alabala03', '+40752312600', '100');
INSERT INTO users (name_us, email, password, phone, credits)
VALUES ('Alina Sime', 'simealina@gmail.com', 'alabala04', '+40752312700', '100');



INSERT INTO rentals (users_id, equipment_id, start_date, end_date, price)
VALUES ('1', '1', '2021-04-19 14:03:01', '2021-04-27 11:05:01', '15');
INSERT INTO rentals (users_id, equipment_id, start_date, end_date, price)
VALUES ('4', '3', '2021-04-17 14:02:01', '2021-04-19 10:02:01', '20');
INSERT INTO rentals (users_id, equipment_id, start_date, end_date, price)
VALUES ('2', '18', '2021-05-11 09:12:01', '2021-05-19 10:32:41', '40');
INSERT INTO rentals (users_id, equipment_id, start_date, end_date, price)
VALUES ('3', '2', '2021-04-27 16:02:01', '2021-05-03 12:02:01', '20');



INSERT INTO history (users_id, equipment_id)
VALUES ('1', '1');
INSERT INTO history (users_id, equipment_id)
VALUES ('4', '3');
INSERT INTO history (users_id, equipment_id)
VALUES ('2', '4');
INSERT INTO history (users_id, equipment_id)
VALUES ('3', '2');



INSERT INTO locations (name_lo, phone_lo, email_lo, adress_lo, program, facilities, link)
VALUES ('TNT Brothers Sports Club Association', '+40371100300', 'office@tnt-brothers.ro',
        'Clinceni Aerodrome, Ilfov, Street Aeroportului, no.114, Cornetu, Google Maps: Cornetu 077060',
        'Thursday, Friday, Saturday and Sunday from 08:30 - sunset',
        'equipment maintenance and repair, tandem skydiving, skydiving school, experienced skydivers, special projects ',
        'https://www.tnt-brothers.ro');
INSERT INTO locations (name_lo, phone_lo, email_lo, adress_lo, program, facilities, link)
VALUES ('TNT Brothers Seaside', '+40371100600', 'office@tnt-brothers.ro',
        'Tuzla Aerodrome, Constanta, Tuzla, Google Maps: Tuzla 907295',
        'Friday, Saturday and Sunday from 08:30 - sunset',
        'equipment maintenance and repair, tandem skydiving, skydiving school, experienced skydivers, special projects ',
        'https://www.tnt-brothers.ro');
INSERT INTO locations (name_lo, phone_lo, email_lo, adress_lo, program, facilities, link)
VALUES ('Skydive Transilvania', '+40737593483', 'not found',
        'Luncani Aerodrome, Cluj Napoca, Google Maps: Luncani 407362',
        'Monday - Friday from 08:30 - 17:00',
        'equipment maintenance and repair, tandem skydiving, skydiving school, experienced skydivers',
        'http://skydivetransilvania.ro');
INSERT INTO locations (name_lo, phone_lo, email_lo, adress_lo, program, facilities, link)
VALUES ('GO JUMP Skydiving Club Timisoara', '+40773787553', 'office@gojump.ro',
        'Siria, Arad, Google Maps: Siria 317340', 'https://www.gojump.ro/en/dropzone/calendar',
        'tandem skydiving, experienced skydivers', 'https://www.gojump.ro');
INSERT INTO locations (name_lo, phone_lo, email_lo, adress_lo, program, facilities, link)
VALUES ('Skydiving Center', '+40743826336', 'office@skydivingcenter.ro',
        'Clinceni Aerodrome, Ilfov, Google Maps: Cornetu 077070',
        'Saturday - Sunday from 10:00 - 18:00',
        'equipment maintenance and repair, tandem skydiving, skydiving school, experienced skydivers',
        'https://www.skydivingcenter.ro');
INSERT INTO locations (name_lo, phone_lo, email_lo, adress_lo, program, facilities, link)
VALUES ('Aeroclubul "Alexandru Matei" Iasi', '+40726/678.541', 'iasi@aeroclubulromaniei.ro',
        'Iasi, Iasi, Street Aviatiei, no.2,', 'Monday - Friday from 08:30 - 16:00',
        'equipment maintenance and repair, tandem skydiving, skydiving school, experienced skydivers',
        'http://aeroclub-iasi.ro');
INSERT INTO locations (name_lo, phone_lo, email_lo, adress_lo, program, facilities, link)
VALUES ('Aeroclubul Mures "Elie Carafoli"', '+40744159243', 'mures@aeroclubulromaniei.ro',
        'Mures, Targu Mures, Street Libertatii, no.120 ', 'Monday - Friday from 08:30 - 16:00',
        'equipment maintenance and repair, tandem skydiving, skydiving school, experienced skydivers',
        'http://aeroclubul-mures.ro');

SELECT *
FROM users;
SELECT *
FROM equipment;
SELECT *
FROM rentals;
-- SELECT * FROM rentals ORDER BY end_date DESC;
SELECT *
FROM history;
SELECT *
FROM locations;