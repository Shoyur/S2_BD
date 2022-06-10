CREATE DATABASE BDVIDEOTHEQUE;
USE BDVIDEOTHEQUE;
CREATE TABLE CLIENTS (
    IDCLIENT INT NOT NULL AUTO_INCREMENT,
    PRENOM VARCHAR(25),
    NOM VARCHAR(25),
    COURRIEL VARCHAR(25) NOT NULL,
    PRIMARY KEY (IDCLIENT)
);
CREATE TABLE FACTURES (
    IDFACTURE INT NOT NULL AUTO_INCREMENT,
    IDCLIENT INT NOT NULL,
    PRIX DOUBLE, -- 1jour=2.00$, 3jours=5.00$, 7jours=10.00$
    LDATE DATE  NOT NULL,
    FOREIGN KEY (IDCLIENT) REFERENCES CLIENTS (IDCLIENT),
    PRIMARY KEY (IDFACTURE)
);
CREATE TABLE VIDEOS (
    IDVIDEO             INT NOT NULL AUTO_INCREMENT,
    TITRE               VARCHAR(25) NOT NULL,
    CATEGORIE           INT NOT NULL, -- 1=Comédie, 2=Action, 3=Horreur, 4=SciFi, 5=Drame
    PRIMARY KEY (IDVIDEO)
);
CREATE TABLE DETAILS (
    IDDETAILS INT NOT NULL AUTO_INCREMENT,
    IDFACTURE INT NOT NULL,
    IDVIDEO INT NOT NULL,
    DUREELOCATION INT NOT NULL,
    FOREIGN KEY (IDFACTURE) REFERENCES FACTURES (IDFACTURE),
    FOREIGN KEY (IDVIDEO) REFERENCES VIDEOS (IDVIDEO),
    PRIMARY KEY (IDDETAILS)
);

INSERT INTO CLIENTS (PRENOM, NOM, COURRIEL) VALUES ('Slani', 'Utsovakia', 'sluts@hotmale.com');
INSERT INTO CLIENTS (PRENOM, NOM, COURRIEL) VALUES ('Bill', 'Tchang', 'bitch@hotmale.com');
INSERT INTO CLIENTS (PRENOM, NOM, COURRIEL) VALUES ('Jenna', 'Erkr', 'jerk@hotmale.com');
INSERT INTO CLIENTS (PRENOM, NOM, COURRIEL) VALUES ('Vishal', 'Agrawal', 'viagra@hotmale.com');
INSERT INTO CLIENTS (PRENOM, NOM, COURRIEL) VALUES ('Samuel', 'Raif', 'samurai@hotmale.com'); 

INSERT INTO FACTURES (IDCLIENT, PRIX, LDATE) VALUES (1, 11.11, '2021-12-15');
INSERT INTO FACTURES (IDCLIENT, PRIX, LDATE) VALUES (2, 22.22, '2022-1-25');

INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Monty Python and the Holy Grail' , 1);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('The Blues Brothers' , 1);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Dumb and Dumber' , 1);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Hot Fuzz' , 2);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('The Naked Gun' , 2);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Beverly Hills Cop' , 2);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Hereditary' , 3);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('The Conjuring' , 3);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('The Shining' , 3);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('2001: A Space Odyssey' , 4);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Blade Runner' , 4);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Alien' , 4);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Forrest Gump' , 5);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('American Beauty' , 5);
INSERT INTO VIDEOS (TITRE, CATEGORIE) VALUES ('Schindlers List' , 5);

INSERT INTO DETAILS (IDFACTURE, IDVIDEO, DUREELOCATION) VALUES (1, 1, 1);
INSERT INTO DETAILS (IDFACTURE, IDVIDEO, DUREELOCATION) VALUES (2, 2, 3);
INSERT INTO DETAILS (IDFACTURE, IDVIDEO, DUREELOCATION) VALUES (2, 3, 3);