-- bestand moet normaliter statements.sql heten. Folder zal meer uitwerkingen bevatten, vandaar mysq-herhaling.sql
CREATE DATABASE mysqlfun;

-- selecteer mysqlfun als default database
USE mysqlfun;

-- maak table klant als eerst, want orders verwijst naar dit tabel.
CREATE TABLE klant(
    id INT NOT NULL AUTO_INCREMENT,
    naam VARCHAR(255) NOT NULL,
    achternaam VARCHAR(255) NOT NULL,
    adres_straatnaam VARCHAR(255) NOT NULL,
    stad VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT,
    klant_id INT NOT NULL,
    product VARCHAR(255) NOT NULL,
    aantal INT NOT NULL,
    prijs DECIMAL(6,2) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(klant_id) REFERENCES klant(id)
);