SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;

DROP DATABASE IF EXISTS Pokemon;
CREATE DATABASE Pokemon;

USE Pokemon;

CREATE TABLE Jugador (
    id_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    correo VARCHAR(255) NOT NULL UNIQUE,
    clave VARCHAR(255) NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ultima_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Mazo (
    id_mazo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    fk_id_jugador INTEGER NOT NULL,
    nombre_mazo VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    numero_cartas INT NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ultima_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (fk_id_jugador) REFERENCES Jugador(id_jugador) ON DELETE CASCADE
);

CREATE TABLE Partida (
    id_partida INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_id_jugador INT NOT NULL,
    fk_id_jugador2 INT NOT NULL,
    numero_nivel INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    ganador VARCHAR(230) NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ultima_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (fk_id_jugador) REFERENCES Jugador(id_jugador) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_jugador2) REFERENCES Jugador(id_jugador) ON DELETE CASCADE
);

CREATE TABLE Carta (
    id_carta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_id_jugador INT NOT NULL,
    fk_id_mazo INT NOT NULL,
    nombre_carta VARCHAR(255) NOT NULL,
   fk_id_tipo_carta INT NOT NULL,
    energia VARCHAR(255) NOT NULL,
    poder VARCHAR(255) NOT NULL,
    nivel_vida INT CHECK (nivel_vida >= 0) NOT NULL,
    FOREIGN KEY (fk_id_jugador) REFERENCES Jugador(id_jugador) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_mazo) REFERENCES Mazo(id_mazo) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_tipo_carta) REFERENCES TipoCarta(id_tipo_carta) ON DELETE CASCADE
);

CREATE TABLE TipoCarta (
    id_tipo_carta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE TipoDescarte (
    id_tipo_descarte INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE Descarte (
    id_descarte INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_id_partida INT NOT NULL,
    fk_id_jugador INT NOT NULL,
    fk_id_jugador2 INT NOT NULL,
    fk_id_carta INT NOT NULL,
    fk_id_tipo_descarte INT NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ultima_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (fk_id_partida) REFERENCES Partida(id_partida) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_jugador) REFERENCES Jugador(id_jugador) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_jugador2) REFERENCES Jugador(id_jugador) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_carta) REFERENCES Carta(id_carta) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_tipo_descarte) REFERENCES TipoCarta(id_tipo_carta) ON DELETE CASCADE
);

CREATE TABLE Inventario (
    id_inventario INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_id_jugador INTEGER NOT NULL,
    fk_id_jugador2 INTEGER NOT NULL,
    fk_id_carta INTEGER NOT NULL,
    fk_id_mazo INTEGER NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ultima_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (fk_id_carta) REFERENCES Carta(id_carta) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_jugador) REFERENCES Jugador(id_jugador) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_jugador2) REFERENCES Jugador(id_jugador) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_mazo) REFERENCES Mazo(id_mazo) ON DELETE CASCADE
);

CREATE TABLE TipoAtaque (
    id_tipo_ataque INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    tipo_ataque VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Turno (
    id_turno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    fk_id_partida INT NOT NULL,
    fk_id_jugador INTEGER NOT NULL,
    fk_id_jugador2 INTEGER NOT NULL,
    fk_id_carta_jugada INT NOT NULL,
    fk_id_tipo_ataque INT NOT NULL,
    numero_turno INT NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ultima_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (fk_id_partida) REFERENCES Partida(id_partida) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_jugador) REFERENCES Jugador(id_jugador) ON DELETE CASCADE, 
    FOREIGN KEY (fk_id_jugador2) REFERENCES Jugador(id_jugador) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_carta_jugada) REFERENCES Carta(id_carta) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_tipo_ataque) REFERENCES TipoAtaque(id_tipo_ataque) ON DELETE CASCADE
);






