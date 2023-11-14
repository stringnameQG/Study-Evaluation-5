INSERT INTO horaires
(horaireouverture, horairefermeture, horairedescription)
VALUES
('07:00:00', '23:50:00', 'semaine'),
('07:00:00', '21:50:00', 'weekend'),
('00:00:00', '00:00:00', 'ferme');
INSERT INTO semaines
(lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche, descriptionsemaine)
VALUES
(1, 1, 1, 1, 1, 2, 2, 'semaine classique');
INSERT INTO cinemas
(nomcinema, codesemaine)
VALUES
('Le pater', 1),
('Cinema lumiere', 1);
INSERT INTO salles
(numerosalle, nombreplace, codecinema)
VALUES
(1, 2, 1), (2, 3, 2);
INSERT INTO films
(titrefilm, dureefilm)
VALUES
('Harry Potter', '02:00:00' ),
('Taxi 5', '01:30:00' ),
('Twillight', '02:30:00' );
INSERT INTO prix
(descriptionprix, prix)
VALUES
('plein tarif', 9.20 ),
('Etudiant', 7.60 ),
('Moin de 14', 5.90 );
INSERT INTO seances
(codesalle, horairefilm, codefilm)
VALUES
(1, '8:00:00', 1), (2, '9:30:00', 2);
INSERT INTO users
(email, password)
VALUES
('TheTest1@gmail.com', 'bsJ5xWGf5p5H1Kv'),
('Test@gmail.com', 'eZL3HALY00NV3TB'),
('Augustin@gmail.com', 'lNQaNh1Vgtj8AZf');
INSERT INTO tickets
(codeprix, codecinema, codesalle, codeseance, codeuser)
VALUES
(1, 1, 2, 1, 1),
(2, 1, 2, 1, 2);