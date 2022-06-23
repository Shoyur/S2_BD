CREATE DATABASE IF NOT EXISTS fromages;
USE fromages;

DROP TABLE IF EXISTS fromages;
DROP TABLE IF EXISTS personnes;
DROP TABLE IF EXISTS degustations;

CREATE TABLE fromages (
    nf      INT NOT NULL,
    nom     VARCHAR(25),
    type    VARCHAR(25),
    lait    VARCHAR(25),
    prix    DECIMAL(6,2),
CONSTRAINT fromages_PRIMARY_KEY PRIMARY KEY (nf));

INSERT INTO fromages VALUES (1, 'Grue Hier De Crotte', 'salé', 'vache', 12.81);
INSERT INTO fromages VALUES (2, 'Tranche Orange', 'jaune', 'vache', 2.99);
INSERT INTO fromages VALUES (3, 'Donkey Stiffener', 'gras', 'brebis', 9.50);
INSERT INTO fromages VALUES (4, 'Le Sweet', 'salé', 'brebis', 6.86);

CREATE TABLE personnes (
    np      INT NOT NULL,
    nom     VARCHAR(25),
    prenom  VARCHAR(25),
    ville   VARCHAR(25),
CONSTRAINT personnes_PRIMARY_KEY PRIMARY KEY (np));

INSERT INTO personnes VALUES (1, 'Trump', 'Donald', 'Boucherville');
INSERT INTO personnes VALUES (2, 'Manson', 'Marilyn', 'Verdun');
INSERT INTO personnes VALUES (3, 'Lama', 'Dalai', 'Longueuil Beach');
INSERT INTO personnes VALUES (4, 'Dion', 'Caline', 'Orlando');

CREATE TABLE degustations (
    np      INT NOT NULL,
    nf      INT NOT NULL,
    date    DATE,
    qte     INT NOT NULL,
CONSTRAINT np_personnes_FK FOREIGN KEY (np) REFERENCES personnes (np),
CONSTRAINT nf_fromages_FK FOREIGN KEY (nf) REFERENCES fromages (nf));

INSERT INTO degustations VALUES (1, 3, '2022-06-10', 1);
INSERT INTO degustations VALUES (2, 2, '2022-06-10', 8);
INSERT INTO degustations VALUES (3, 1, '2022-06-10', 2);
INSERT INTO degustations VALUES (4, 1, '2022-06-10', 1);
INSERT INTO degustations VALUES (4, 2, '2022-06-10', 5);
INSERT INTO degustations VALUES (4, 3, '2022-06-10', 1);
INSERT INTO degustations VALUES (4, 4, '2022-06-10', 1);