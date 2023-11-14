CREATE DATABASE cinema_database;

CREATE TABLE horaires ( 
codehoraire INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
horaireouverture TIME NOT NULL,
horairefermeture TIME NOT NULL,
horairedescription VARCHAR(255)
);
CREATE TABLE semaines ( 
codesemaine INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
lundi INT,
FOREIGN KEY (lundi) REFERENCES horaires (codehoraire),
mardi INT,
FOREIGN KEY (mardi) REFERENCES horaires (codehoraire),
mercredi INT,
FOREIGN KEY (mercredi) REFERENCES horaires (codehoraire),
jeudi INT,
FOREIGN KEY (jeudi) REFERENCES horaires (codehoraire),
vendredi INT,
FOREIGN KEY (vendredi) REFERENCES horaires (codehoraire),
samedi INT,
FOREIGN KEY (samedi) REFERENCES horaires (codehoraire),
dimanche INT,
FOREIGN KEY (dimanche) REFERENCES horaires (codehoraire),
descriptionsemaine varchar(255)
);
CREATE TABLE cinemas ( 
codecinema INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
nomcinema VARCHAR(255) NOT NULL,
codesemaine INT NOT NULL, 
	FOREIGN KEY (codesemaine) REFERENCES semaines (codesemaine)
);
CREATE TABLE salles ( 
codesalle INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombreplace INT NOT NULL,
numerosalle INT,
codecinema INT NOT NULL, 
	FOREIGN KEY (codecinema) REFERENCES cinemas (codecinema)
);
CREATE TABLE films ( 
codefilm INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titrefilm VARCHAR(255) NOT NULL,
dureefilm TIME NOT NULL
);
CREATE TABLE prix ( 
codeprix INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
descriptionprix VARCHAR(255) NOT NULL,
prix FLOAT NOT NULL
);
CREATE TABLE seances ( 
codeseance INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
codesalle INT NOT NULL,
	FOREIGN KEY (codesalle) REFERENCES salles (codesalle),
horairefilm TIME NOT NULL, 
codefilm INT NOT NULL,
	FOREIGN KEY (codefilm) REFERENCES films (codefilm)
); 
CREATE TABLE users ( 
codeuser INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
email varchar(50) NOT NULL UNIQUE,
password varchar(255) NOT NULL
); 
CREATE TABLE tickets ( 
codeticket INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
codeprix INT NOT NULL,
	FOREIGN KEY (codeprix) REFERENCES prix (codeprix),
codecinema INT NOT NULL, 
	FOREIGN KEY (codecinema) REFERENCES cinemas (codecinema), 
codesalle INT NOT NULL, 
	FOREIGN KEY (codesalle) REFERENCES salles (codesalle), 
codeseance INT NOT NULL, 
	FOREIGN KEY (codeseance) REFERENCES seances (codeseance),
codeuser INT NOT NULL, 
	FOREIGN KEY (codeuser) REFERENCES users (codeuser)
); 