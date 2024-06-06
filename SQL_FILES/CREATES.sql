-- Creating the database
CREATE DATABASE IF NOT EXISTS BD_MUBI;
USE BD_MUBI;

-- Creating the tables
CREATE TABLE Actores (
    ID_ACTOR INT,
    NOMBRE VARCHAR(255)
);

CREATE TABLE Generos (
    ID_GENERO INT,
    NOMBRE VARCHAR(255)
);

CREATE TABLE Directores (
    ID_DIRECTOR INT,
    NOMBRE VARCHAR(255)
);

CREATE TABLE Productoras (
    ID_PRODUCTORA INT,
    NOMBRE VARCHAR(255)
);

CREATE TABLE Paises (
    ID_PAIS INT,
    NOMBRE VARCHAR(255)
);

CREATE TABLE Usuarios (
    ID_USUARIO INT,
    NOMBRE_USUARIO VARCHAR(255),
    EMAIL VARCHAR(255),
    FECHA_NACIMIENTO DATE,
    GENERO VARCHAR(50)
);

CREATE TABLE Peliculas (
    ID_PELICULA INT,
    TITULO VARCHAR(255),
    ANIO YEAR,
    DURACION INT,
    DESCRIPCION TEXT,
    ID_PAIS INT,
    ID_PRODUCTORA INT
);

CREATE TABLE Resenias (
    ID_RESEÑA INT,
    ID_USUARIO INT,
    ID_PELICULA INT,
    CALIFICACION INT,
    COMENTARIO TEXT,
    FECHA DATE
);

CREATE TABLE Vistas (
    ID_VISTA INT,
    ID_USUARIO INT,
    ID_PELICULA INT,
    FECHA DATE
);

CREATE TABLE Pelicula_actor (
    ID_ACTOR INT,
    ID_PELICULA INT
);

CREATE TABLE Pelicula_genero (
    ID_GENERO INT,
    ID_PELICULA INT
);

CREATE TABLE Pelicula_director (
    ID_DIRECTOR INT,
    ID_PELICULA INT
);

-- primary keys
ALTER TABLE Actores ADD PRIMARY KEY (ID_ACTOR);
ALTER TABLE Generos ADD PRIMARY KEY (ID_GENERO);
ALTER TABLE Directores ADD PRIMARY KEY (ID_DIRECTOR);
ALTER TABLE Productoras ADD PRIMARY KEY (ID_PRODUCTORA);
ALTER TABLE Paises ADD PRIMARY KEY (ID_PAIS);
ALTER TABLE Usuarios ADD PRIMARY KEY (ID_USUARIO);
ALTER TABLE Peliculas ADD PRIMARY KEY (ID_PELICULA);
ALTER TABLE Resenias ADD PRIMARY KEY (ID_RESEÑA);
ALTER TABLE Vistas ADD PRIMARY KEY (ID_VISTA);
ALTER TABLE Pelicula_actor ADD PRIMARY KEY (ID_ACTOR, ID_PELICULA);
ALTER TABLE Pelicula_genero ADD PRIMARY KEY (ID_GENERO, ID_PELICULA);
ALTER TABLE Pelicula_director ADD PRIMARY KEY (ID_DIRECTOR, ID_PELICULA);

-- foreign keys
ALTER TABLE Peliculas ADD CONSTRAINT FK_PELICULA_PAIS FOREIGN KEY (ID_PAIS) REFERENCES Paises(ID_PAIS);
ALTER TABLE Peliculas ADD CONSTRAINT FK_PELICULA_PRODUCTORA FOREIGN KEY (ID_PRODUCTORA) REFERENCES Productoras(ID_PRODUCTORA);

ALTER TABLE Resenias ADD CONSTRAINT FK_RESEÑA_USUARIO FOREIGN KEY (ID_USUARIO) REFERENCES Usuarios(ID_USUARIO);
ALTER TABLE Resenias ADD CONSTRAINT FK_RESEÑA_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES Peliculas(ID_PELICULA);

ALTER TABLE Vistas ADD CONSTRAINT FK_VISTA_USUARIO FOREIGN KEY (ID_USUARIO) REFERENCES Usuarios(ID_USUARIO);
ALTER TABLE Vistas ADD CONSTRAINT FK_VISTA_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES Peliculas(ID_PELICULA);

ALTER TABLE Pelicula_actor ADD CONSTRAINT FK_PELICULA_ACTOR_ACTOR FOREIGN KEY (ID_ACTOR) REFERENCES Actores(ID_ACTOR);
ALTER TABLE Pelicula_actor ADD CONSTRAINT FK_PELICULA_ACTOR_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES Peliculas(ID_PELICULA);

ALTER TABLE Pelicula_genero ADD CONSTRAINT FK_PELICULA_GENERO_GENERO FOREIGN KEY (ID_GENERO) REFERENCES Generos(ID_GENERO);
ALTER TABLE Pelicula_genero ADD CONSTRAINT FK_PELICULA_GENERO_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES Peliculas(ID_PELICULA);

ALTER TABLE Pelicula_director ADD CONSTRAINT FK_PELICULA_DIRECTOR_DIRECTOR FOREIGN KEY (ID_DIRECTOR) REFERENCES Directores(ID_DIRECTOR);
ALTER TABLE Pelicula_director ADD CONSTRAINT FK_PELICULA_DIRECTOR_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES Peliculas(ID_PELICULA);
