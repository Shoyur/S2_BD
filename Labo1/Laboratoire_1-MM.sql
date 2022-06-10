CREATE DATABASE CONSTRUCTION;
USE CONSTRUCTION;

CREATE TABLE Quartier (
    NomQuartier VARCHAR(80) NOT NULL,
    Localisation VARCHAR(80) NOT NULL,
    NombreRues INT NOT NULL,
    NombreImmeubles INT NOT NULL,
    PRIMARY KEY (NomQuartier)
);
CREATE TABLE Immeuble (
    IdImmeuble INT NOT NULL AUTO_INCREMENT,
    NomQuartier VARCHAR(80) NOT NULL,
    Adresse VARCHAR(80) NOT NULL,
    NombreEtages INT NOT NULL,
    Ascenseur ENUM ('Oui', 'Non'),
    PRIMARY KEY (IdImmeuble),
    FOREIGN KEY (NomQuartier) REFERENCES Quartier (NomQuartier)
);
CREATE TABLE Architecte (
    IdArchitecte INT NOT NULL AUTO_INCREMENT,
    Nom VARCHAR(25) NOT NULL,
    Prenom VARCHAR(25) NOT NULL,
    SecteurActivite VARCHAR(25) NOT NULL,
    PRIMARY KEY (IdArchitecte)
);
CREATE TABLE Realise (
    NomQuartier VARCHAR(80) NOT NULL,
    IdImmeuble INT NOT NULL,
    IdArchitecte INT NOT NULL,
    DateDebutTravaux DATE NOT NULL,
    TypeTravaux ENUM ('RC', 'CO', 'RE'),
    CONSTRAINT Realise_idq_idi_ida_PK PRIMARY KEY (NomQuartier, IdImmeuble, IdArchitecte),
    FOREIGN KEY (NomQuartier) REFERENCES Quartier (NomQuartier),
    FOREIGN KEY (IdArchitecte) REFERENCES Architecte (IdArchitecte)
);

INSERT INTO Quartier VALUES ('Quartier des pauvres', 'Chicago', 5, 60);
INSERT INTO Quartier VALUES ('Quartier des riches', 'Beverly Hills', 3, 30);

INSERT INTO Immeuble (NomQuartier, Adresse, NombreEtages, Ascenseur) VALUES ('Quartier des pauvres', '4000 Boulevard des Crottés', 4, 'Non');
INSERT INTO Immeuble (NomQuartier, Adresse, NombreEtages, Ascenseur) VALUES ('Quartier des pauvres', '501 Plaza du Casino Abandonné', 6, 'Oui');
INSERT INTO Immeuble (NomQuartier, Adresse, NombreEtages, Ascenseur) VALUES ('Quartier des riches', '20 Chemin des Hirondelles', 2, 'Non');

INSERT INTO Architecte (Nom, Prenom, SecteurActivite) VALUES ('Lapointe', 'Éric', 'Décoration');

INSERT INTO Realise VALUES ('Quartier des pauvres', 1, 1, '2022-04-05', 'RC');
INSERT INTO Realise VALUES ('Quartier des pauvres', 2, 1, '2022-04-25', 'CO');
INSERT INTO Realise VALUES ('Quartier des riches', 3, 1, '2022-06-05', 'RE');