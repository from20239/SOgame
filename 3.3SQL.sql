DROP DATABASE IF EXISTS Juego;
CREATE DATABASE Juego;
USE Juego;
CREATE TABLE Jugador (
  ID INTEGER PRIMARY KEY NOT NULL,
  userName TEXT NOT NULL,
  pssword TEXT NOT NULL
)ENGINE = InnoDB;


CREATE TABLE Partida (
  ID INTEGER PRIMARY KEY NOT NULL,
  horaFin TEXT NOT NULL,
  duracion INTEGER NOT NULL,
  ganador TEXT NOT NULL
)ENGINE = InnoDB;


CREATE TABLE PartidasJugadores (
  ID_Jugador INTEGER NOT NULL,
  ID_Partida INTEGER NOT NULL,
  posicion INTEGER NOT NULL,
  puntuacion INTEGER NOT NULL,
  FOREIGN KEY (ID_Jugador) REFERENCES Jugador(ID),
  FOREIGN KEY (ID_Partida) REFERENCES Partida(ID)
)ENGINE = InnoDB;
INSERT INTO Jugador VALUES (1,'Asier','aaa');
INSERT INTO Jugador VALUES (2,'Ivan','bbb');
INSERT INTO Jugador VALUES (3,'Julia','ccc');
INSERT INTO Jugador VALUES (4,'Jan','ddd');
INSERT INTO Jugador VALUES (5,'Angela','eee');


INSERT INTO Partida VALUES (1,'01/01/23/07/15',20,'Asier');
INSERT INTO Partida VALUES (2,'04/01/23/10/30',30,'Jan');
INSERT INTO Partida VALUES (3,'26/01/23/13/00',24,'Julia');


INSERT INTO PartidasJugadores VALUES(1,1,1,100);
INSERT INTO PartidasJugadores VALUES(1,2,2,110);
INSERT INTO PartidasJugadores VALUES(1,3,2,120);
INSERT INTO PartidasJugadores VALUES(2,2,1,130);
INSERT INTO PartidasJugadores VALUES(2,3,3,140);
INSERT INTO PartidasJugadores VALUES(3,1,2,150);
INSERT INTO PartidasJugadores VALUES(4,1,4,60);
INSERT INTO PartidasJugadores VALUES(4,2,4,70);
INSERT INTO PartidasJugadores VALUES(4,3,1,180);
INSERT INTO PartidasJugadores VALUES(5,1,3,40);
INSERT INTO PartidasJugadores VALUES(5,2,3,30);
