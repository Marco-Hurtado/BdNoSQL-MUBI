-- Active: 1708902720363@@127.0.0.1@3306@MUBI

-- Insertar datos en la tabla Genero
INSERT INTO Genero (ID_GENERO, NOMBRE) VALUES
(1, 'Drama'),
(2, 'Comedia'),
(3, 'Acción'),
(4, 'Romance'),
(5, 'Ciencia ficción');

-- Insertar datos en la tabla Director
INSERT INTO Director (ID_DIRECTOR, NOMBRE, NACIONALIDAD, FECHA_NACIMIENTO) VALUES
(1, 'Christopher Nolan', 'Británico', '1970-07-30'),
(2, 'Quentin Tarantino', 'Estadounidense', '1963-03-27'),
(3, 'Steven Spielberg', 'Estadounidense', '1946-12-18'),
(4, 'Greta Gerwig', 'Estadounidense', '1983-08-04'),
(5, 'Alfonso Cuarón', 'Mexicano', '1961-11-28');

-- Insertar datos en la tabla Productora
INSERT INTO Productora (ID_PRODUCTORA, NOMBRE, FUNDACION, PAIS) VALUES
(1, 'Warner Bros. Pictures', '1923-04-04', 'Estados Unidos'),
(2, 'Paramount Pictures', '1912-05-08', 'Estados Unidos'),
(3, 'Universal Pictures', '1912-04-30', 'Estados Unidos'),
(4, 'Columbia Pictures', '1918-01-10', 'Estados Unidos'),
(5, '20th Century Studios', '1935-05-31', 'Estados Unidos');

-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (ID_USUARIO, NOMBRE_USUARIO, EMAIL, FECHA_NACIMIENTO, GENERO) VALUES
(1, 'maria89', 'maria89@gmail.com', '1990-05-15', 'Femenino'),
(2, 'juan_perez', 'juan.perez@example.com', '1985-08-20', 'Masculino'),
(3, 'laurasanchez', 'laura.sanchez@example.com', '1992-01-10', 'Femenino'),
(4, 'pedro_garcia', 'pedro.garcia@example.com', '1988-06-25', 'Masculino'),
(5, 'ana_rosales', 'ana.rosales@example.com', '1995-03-12', 'Femenino'),
(6, 'jose32', 'jose32@gmail.com', '1982-11-08', 'Masculino'),
(7, 'marta_lopez', 'marta.lopez@example.com', '1993-09-18', 'Femenino'),
(8, 'davidmartinez', 'david.martinez@example.com', '1987-04-30', 'Masculino'),
(9, 'lucia_gomez', 'lucia.gomez@example.com', '1994-07-22', 'Femenino'),
(10, 'carlos75', 'carlos75@gmail.com', '1991-12-05', 'Masculino'),
(11, 'sandra_rodriguez', 'sandra.rodriguez@example.com', '1986-10-02', 'Femenino'),
(12, 'roberto83', 'roberto83@gmail.com', '1998-02-14', 'Masculino'),
(13, 'patricia91', 'patricia91@gmail.com', '1989-09-28', 'Femenino'),
(14, 'alberto99', 'alberto99@gmail.com', '1996-06-09', 'Masculino'),
(15, 'elena_martin', 'elena.martin@example.com', '1997-04-17', 'Femenino');

-- Insertar datos en la tabla Peliculas
INSERT INTO Peliculas (ID_PELICULA, ID_DIRECTOR, ID_PRODUCTORA, ID_GENERO, TITULO, ANIO, DURACION, DESCRIPCION, CLASIFICACION_EDAD) VALUES
(1, 1, 1, 5, 'Inception', 2010, 148, 'Un ladrón especializado en el robo de secretos corporativos utiliza la tecnología para infiltrarse en las mentes de las personas y robar sus secretos más íntimos.', 'PG-13'),
(2, 1, 1, 3, 'The Dark Knight', 2008, 152, 'Cuando el Joker provoca el caos en Gotham, Batman debe aceptar uno de los mayores desafíos de su vida para luchar contra el mal.', 'PG-13'),
(3, 2, 2, 1, 'Pulp Fiction', 1994, 154, 'Las vidas de varios personajes se entrelazan en historias de violencia y redención.', 'R'),
(4, 3, 3, 4, 'The Notebook', 2004, 123, 'Una joven se enamora de un chico del que sus padres desaprueban.', 'PG-13'),
(5, 4, 4, 2, 'Lady Bird', 2017, 94, 'Una adolescente de California intenta escapar de su familia y de su ciudad para ir a la universidad en Nueva York.', 'R'),
(6, 5, 5, 5, 'Gravity', 2013, 91, 'Dos astronautas luchan por sobrevivir después de que un accidente deja su nave espacial en ruinas.', 'PG-13'),
(7, 1, 1, 3, 'The Dark Knight Rises', 2012, 164, 'Ocho años después de los eventos de The Dark Knight, Batman regresa para enfrentarse al temible Bane.', 'PG-13'),
(8, 2, 2, 1, 'Kill Bill: Vol. 1', 2003, 111, 'Después de ser traicionada y casi asesinada, la Novia se embarca en una búsqueda de venganza contra su antiguo jefe y su banda de asesinos.', 'R'),
(9, 3, 3, 4, 'Titanic', 1997, 195, 'Un joven de clase baja y una joven de clase alta se enamoran a bordo del Titanic durante su trágico viaje inaugural.', 'PG-13'),
(10, 4, 4, 2, 'Frances Ha', 2012, 86, 'Una bailarina decide seguir su propio camino en Nueva York después de romper con su mejor amiga.', 'R'),
(11, 5, 5, 1, 'Roma', 2018, 135, 'Una empleada doméstica trabaja para una familia de clase media en la Ciudad de México durante la década de 1970.', 'R'),
(12, 1, 1, 5, 'Interstellar', 2014, 169, 'Un grupo de exploradores viaja a través de un agujero de gusano en el espacio en busca de un nuevo hogar para la humanidad.', 'PG-13'),
(13, 2, 2, 3, 'Reservoir Dogs', 1992, 99, 'Después de un robo que sale mal, un grupo de criminales se enfrenta a la desconfianza mutua mientras intentan descubrir al traidor entre ellos.', 'R'),
(14, 3, 3, 4, 'The Great Gatsby', 2013, 143, 'Un aspirante a escritor llega a Nueva York y es seducido por el estilo de vida de un misterioso millonario.', 'PG-13'),
(15, 4, 4, 2, 'La La Land', 2016, 128, 'Una pianista y un aspirante a actor se enamoran mientras persiguen sus sueños en Los Ángeles.', 'PG-13'),
(16, 5, 5, 1, 'Gravity', 2013, 91, 'Dos astronautas luchan por sobrevivir después de que un accidente deja su nave espacial en ruinas.', 'PG-13'),
(17, 1, 1, 3, 'Inglourious Basterds', 2009, 153, 'Durante la Segunda Guerra Mundial, un grupo de soldados judíos estadounidenses se infiltra en territorio enemigo para llevar a cabo una misión.', 'R'),
(18, 2, 2, 1, 'Django Unchained', 2012, 165, 'Un esclavo liberado se une a un cazador de recompensas alemán para rescatar a su esposa de un despiadado propietario de una plantación en Mississippi.', 'R'),
(19, 3, 3, 4, '500 Days of Summer', 2009, 95, 'La historia de amor no convencional de un hombre que cree en el amor y una mujer que no.', 'PG-13'),
(20, 4, 4, 2, 'Silver Linings Playbook', 2012, 122, 'Después de salir de una institución mental, un hombre se esfuerza por recuperar su vida y ganar de nuevo a su ex esposa.', 'R');

-- Insertar datos en la tabla Resenias
INSERT INTO Resenias (ID_RESENIA, ID_USUARIO, ID_PELICULA, CALIFICACION, COMENTARIO, FECHA) VALUES
(1, 1, 1, 4.5, 'Me encantó esta película, la trama es fascinante y los efectos especiales son increíbles.', '2024-04-01'),
(2, 2, 3, 5.0, 'Pulp Fiction es una obra maestra del cine. Los personajes son memorables y la historia es cautivadora.', '2024-03-28'),
(3, 3, 5, 4.0, 'Lady Bird es una película encantadora que retrata de manera realista la vida adolescente. ¡Recomendada!', '2024-03-30'),
(4, 4, 9, 4.8, 'Titanic es una película clásica que nunca pasa de moda. La actuación de Leonardo DiCaprio y Kate Winslet es excepcional.', '2024-04-02'),
(5, 5, 15, 4.2, 'La La Land es una historia hermosa con una banda sonora increíble. ¡Definitivamente una de mis favoritas!', '2024-04-03'),
(6, 6, 11, 4.5, 'Roma es una película emotiva y visualmente impresionante. Alfonso Cuarón hizo un trabajo excepcional.', '2024-03-29'),
(7, 7, 7, 4.0, 'The Dark Knight Rises es una gran conclusión para la trilogía de Batman de Christopher Nolan. La acción es épica y la trama es absorbente.', '2024-04-04'),
(8, 8, 14, 4.3, 'The Great Gatsby es una película visualmente deslumbrante con un elenco impresionante. La historia es emocionante y conmovedora.', '2024-03-27'),
(9, 9, 12, 4.7, 'Interstellar es una odisea espacial épica con una trama profunda y emocionante. ¡Definitivamente una de mis películas favoritas de ciencia ficción!', '2024-03-31'),
(10, 10, 10, 3.9, 'Frances Ha es una película interesante con personajes complejos. La dirección de Greta Gerwig es notable.', '2024-04-05'),
(11, 11, 13, 4.5, 'Reservoir Dogs es un clásico del cine de Quentin Tarantino. La actuación y el guion son brillantes.', '2024-03-26'),
(12, 12, 20, 4.1, 'Silver Linings Playbook es una película conmovedora y divertida. Las actuaciones de Bradley Cooper y Jennifer Lawrence son excepcionales.', '2024-03-25'),
(13, 13, 19, 3.8, '500 Days of Summer es una historia de amor refrescante y realista. ¡Me encantó la química entre Joseph Gordon-Levitt y Zooey Deschanel!', '2024-04-06'),
(14, 14, 8, 4.4, 'Kill Bill: Vol. 1 es una película de acción emocionante y estilizada. La dirección de Quentin Tarantino es genial.', '2024-03-24'),
(15, 15, 6, 4.6, 'Gravity es una experiencia cinematográfica impresionante. La tensión y el suspenso te mantienen al borde del asiento.', '2024-04-07'),
(16, 1, 16, 4.2, 'Gravity es una película que te deja sin aliento desde el principio hasta el final. ¡Una obra maestra de la ciencia ficción!', '2024-04-08'),
(17, 2, 17, 4.7, 'Inglourious Basterds es una película audaz y emocionante. La actuación de Brad Pitt es destacada.', '2024-03-23'),
(18, 3, 18, 4.8, 'Django Unchained es una película impactante y con una gran actuación de Jamie Foxx. Quentin Tarantino en su mejor momento.', '2024-04-09'),
(19, 4, 4, 4.5, 'Titanic es una película clásica que nunca pasa de moda. La actuación de Leonardo DiCaprio y Kate Winslet es excepcional.', '2024-04-10'),
(20, 5, 3, 4.0, 'Pulp Fiction es una obra maestra del cine. Los personajes son memorables y la historia es cautivadora.', '2024-03-22');

-- Insertar datos en la tabla Vistas
INSERT INTO Vistas (ID_VISTA, ID_USUARIO, ID_PELICULA, FECHA) VALUES
(1, 1, 1, '2024-04-01'),
(2, 2, 3, '2024-03-28'),
(3, 3, 5, '2024-03-30'),
(4, 4, 9, '2024-04-02'),
(5, 5, 15, '2024-04-03'),
(6, 6, 11, '2024-03-29'),
(7, 7, 7, '2024-04-04'),
(8, 8, 14, '2024-03-27'),
(9, 9, 12, '2024-03-31'),
(10, 10, 10, '2024-04-05'),
(11, 11, 13, '2024-03-26'),
(12, 12, 20, '2024-03-25'),
(13, 13, 19, '2024-04-06'),
(14, 14, 8, '2024-03-24'),
(15, 15, 6, '2024-04-07'),
(16, 1, 16, '2024-04-08'),
(17, 2, 17, '2024-03-23'),
(18, 3, 18, '2024-04-09'),
(19, 4, 4, '2024-04-10'),
(20, 5, 3, '2024-03-22'),
(21, 1, 2, '2024-04-12'),
(22, 2, 4, '2024-04-15'),
(23, 3, 6, '2024-04-16'),
(24, 4, 8, '2024-04-17'),
(25, 5, 10, '2024-04-18'),
(26, 6, 12, '2024-04-19'),
(27, 7, 14, '2024-04-20'),
(28, 8, 16, '2024-04-21'),
(29, 9, 18, '2024-04-22'),
(30, 10, 20, '2024-04-23');
