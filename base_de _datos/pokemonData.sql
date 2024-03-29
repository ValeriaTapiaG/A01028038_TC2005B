USE Pokemon;

INSERT INTO Jugador (nombres, correo, clave) VALUES
('Ash Ketchum', 'ash@gmail.com', 'pikachu123'),
('Misty', 'misty@gmail.com', 'starmie456'),
('Brock', 'brock@gmail.com', 'onix789'),
('Gary Oak', 'gary@gmail.com', 'eevee987'),
('Jessie', 'jessie@gmail.com', 'meowth246'),
('James', 'james@gmail.com', 'koffing135'),
('May', 'may@gmail.com', 'torchic654'),
('Dawn', 'dawn@gmail.com', 'piplup789'),
('Serena', 'serena@gmail.com', 'fennekin321'),
('Clemont', 'clemont@gmail.com', 'chespin654')
;

INSERT INTO Mazo (fk_id_jugador, nombre_mazo, descripcion, numero_cartas) VALUES
(1, 'Ash Deck', 'Ash''s starter Pokémon deck', 60),
(2, 'Misty Deck', 'Misty''s water Pokémon deck', 58),
(3, 'Brock Deck', 'Brock''s rock Pokémon deck', 59),
(4, 'Gary Deck', 'Gary''s rival Pokémon deck', 62),
(5, 'Team Rocket Deck', 'Jessie and James''s Team Rocket deck', 57),
(6, 'May Deck', 'May''s Pokémon contest deck', 61),
(7, 'Dawn Deck', 'Dawn''s Pokémon coordinator deck', 63),
(8, 'Serena Deck', 'Serena''s Pokémon showcase deck', 59),
(9, 'Clemont Deck', 'Clemont''s electric Pokémon deck', 60),
(10, 'Random Deck', 'Random assortment of Pokémon', 55);


INSERT INTO Partida (fk_id_jugador, fk_id_jugador2, numero_nivel, fecha_inicio, fecha_fin, ganador) VALUES
(1, 2, 1, '2024-01-01', '2024-01-02', 'Ash'),
(3, 4, 2, '2024-01-03', '2024-01-04', 'Gary Oak'),
(5, 6, 3, '2024-01-05', '2024-01-06', 'Team Rocket'),
(7, 8, 4, '2024-01-07', '2024-01-08', 'May'),
(9, 10, 5, '2024-01-09', '2024-01-10', 'Clemont'),
(2, 3, 2, '2024-01-11', '2024-01-12', 'Misty'),
(4, 5, 3, '2024-01-13', '2024-01-14', 'Gary Oak'),
(6, 7, 4, '2024-01-15', '2024-01-16', 'Team Rocket'),
(8, 9, 5, '2024-01-17', '2024-01-18', 'Serena'),
(10, 1, 1, '2024-01-19', '2024-01-20', 'Clemont');


INSERT INTO Carta (fk_id_jugador, fk_id_mazo, nombre_carta, tipo, energia, poder, nivel_vida) VALUES
(1, 1, 'Pikachu', 'Electric', 'Lightning Bolt', 'Thunderbolt', 60),
(2, 2, 'Starmie', 'Water', 'Water Drop', 'Hydro Pump', 70),
(3, 3, 'Onix', 'Rock', 'Rock Throw', 'Earthquake', 80),
(4, 4, 'Eevee', 'Normal', 'Tackle', 'Swift', 50),
(5, 5, 'Meowth', 'Normal', 'Scratch', 'Pay Day', 40),
(6, 6, 'Koffing', 'Poison', 'Gas', 'Smog', 50),
(7, 7, 'Torchic', 'Fire', 'Ember', 'Flamethrower', 60),
(8, 8, 'Piplup', 'Water', 'Bubble', 'Hydro Cannon', 70),
(9, 9, 'Fennekin', 'Fire', 'Ember', 'Fire Spin', 60),
(10, 10, 'Chespin', 'Grass', 'Vine Whip', 'Seed Bomb', 50);


INSERT INTO Descarte (fk_id_partida, fk_id_jugador, fk_id_jugador2, fk_id_carta, tipoDescarte, momento_Descarte) VALUES
(1, 1, 2, 1, 'Descarte inicial', 'Inicio de la partida'),
(2, 3, 4, 4, 'Descarte por derrota', 'Fin de la partida'),
(3, 5, 6, 5, 'Descarte por cambio', 'Turno de cambio'),
(4, 7, 8, 8, 'Descarte por derrota', 'Fin de la partida'),
(5, 9, 10, 10, 'Descarte por derrota', 'Fin de la partida'),
(6, 6, 7, 6, 'Descarte por derrota', 'Fin de la partida'),
(7, 8, 9, 8, 'Descarte por derrota', 'Fin de la partida'),
(8, 10, 1, 10, 'Descarte por derrota', 'Fin de la partida'),
(9, 2, 3, 2, 'Descarte por cambio', 'Turno de cambio'),
(10, 4, 5, 4, 'Descarte por derrota', 'Fin de la partida');


INSERT INTO Inventario (fk_id_jugador, fk_id_jugador2, fk_id_carta, fk_id_mazo) VALUES
(1, 2, 1, 1),
(3, 4, 4, 2),
(5, 6, 5, 3),
(7, 8, 8, 4),
(9, 10, 10, 5),
(2, 3, 2, 1),
(4, 5, 4, 2),
(6, 7, 6, 3),
(8, 9, 8, 4),
(10, 1, 10, 5);


INSERT INTO Turno (fk_id_partida, fk_id_jugador, fk_id_jugador2, numero_turno, energias, pokemons, accion) VALUES
(1, 1, 2, 1, 'Electric', 'Pikachu',  'Attack'),
(2, 3, 4, 1, 'Normal', 'Eevee',  'Attack'),
(3, 5, 6, 1, 'Normal', 'Meowth',  'Swap'),
(4, 7, 8, 1, 'Water', 'Piplup',  'Attack'),
(5, 9, 10, 1, 'Fire', 'Chespin',  'Attack'),
(6, 6, 7, 2, 'Poison', 'Koffing', 'Attack'),
(7, 8, 9, 2, 'Fire', 'Fennekin', 'Attack'),
(8, 10, 1, 2, 'Grass', 'Chespin', 'Attack'),
(9, 2, 3, 2, 'Water', 'Starmie',  'Attack'),
(10, 4, 5, 2, 'Normal', 'Meowth', 'Swap');

SELECT * FROM Turno;

