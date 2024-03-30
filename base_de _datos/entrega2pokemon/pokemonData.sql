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


INSERT INTO TipoCarta (tipo) VALUES
('Normal'),
('Fuego'),
('Agua'),
('Planta'),
('Eléctrico'),
('Tierra'),
('Volador'),
('Psíquico'),
('Roca'),
('Hielo');


INSERT INTO Carta (fk_id_jugador, fk_id_mazo, nombre_carta, fk_id_tipo_carta, energia, poder, nivel_vida) VALUES
(1, 1, 'Pikachu', 5, 'Eléctrico', 'Impactrueno', 60),
(2, 2, 'Charmander', 2, 'Fuego', 'Ascuas', 50),
(3, 3, 'Bulbasaur', 4, 'Planta', 'Latigazo', 55),
(4, 4, 'Squirtle', 3, 'Agua', 'Pistola Agua', 55),
(5, 5, 'Geodude', 9, 'Roca', 'Roca Afilada', 40),
(6, 6, 'Abra', 8, 'Psíquico', 'Confusión', 25),
(7, 7, 'Pidgey', 7, 'Volador', 'Ataque Ala', 40),
(8, 8, 'Sandshrew', 6, 'Tierra', 'Excavar', 50),
(9, 9, 'Jynx', 10, 'Hielo', 'Rayo Confuso', 65),
(10, 10, 'Electabuzz', 5, 'Eléctrico', 'Impactrueno', 65);

INSERT INTO TipoDescarte (tipo) VALUES
('Descarte inicial'),
('Descarte por derrota'),
('Descarte por cambio');



INSERT INTO Descarte (fk_id_partida, fk_id_jugador, fk_id_jugador2, fk_id_carta, fk_id_tipo_descarte) VALUES
(1, 1, 2, 1, 1),
(2, 3, 4, 4, 2),
(3, 5, 6, 5, 3),
(4, 7, 8, 8, 2),
(5, 9, 10, 10, 3),
(6, 6, 7, 6, 1),
(7, 8, 9, 8, 2),
(8, 10, 1, 10, 3),
(9, 2, 3, 2, 1),
(10, 4, 5, 4, 2);


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


INSERT INTO TipoAtaque (tipo_ataque) VALUES
('Físico'),
('Especial'),
('Estado'),
('Ataque rápido'),
('Multiturno'),
('Carga'),
('Potencia'),
('Precisión'),
('Defensa'),
('Curación');

INSERT INTO Turno (fk_id_partida, fk_id_jugador, fk_id_jugador2, fk_id_carta_jugada, fk_id_tipo_ataque, numero_turno) VALUES
(1, 1, 2, 1, 1, 1),
(1, 2, 1, 2, 2, 2),
(1, 1, 2, 3, 3, 3),
(1, 2, 1, 4, 4, 4),
(2, 3, 4, 5, 5, 1),
(2, 4, 3, 6, 6, 2),
(2, 3, 4, 7, 7, 3),
(2, 4, 3, 8, 8, 4),
(3, 5, 6, 9, 9, 1),
(3, 6, 5, 10, 10, 2);




