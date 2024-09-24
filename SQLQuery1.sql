CREATE DATABASE  Institución_Educativa;
GO
USE Institución_Educativa;
GO
CREATE TABLE Estudiantes(
Identificacion BIGINT NOT NULL PRIMARY KEY,
apellido VARCHAR(10) NOT NULL,
nombre VARCHAR(10) NOT NULL,
edad INT,
correo VARCHAR(30) NOT NULL,
celular BIGINT NOT NULL,
grado INT ,
);

CREATE TABLE Profesores(
Identificacion BIGINT NOT NULL PRIMARY KEY,
apellido VARCHAR(10) NOT NULL,
nombre VARCHAR(10) NOT NULL,
celular BIGINT NOT NULL,
correo VARCHAR(30) NOT NULL,
Nombre_Asignatura VARCHAR(20),
);

CREATE TABLE Matricula(
IDEstudiante BIGINT NOT NULL,
IDProfesor BIGINT NOT NULL,
Nombre_Asignatura VARCHAR(20),
FOREIGN KEY (IDEstudiante) REFERENCES Estudiantes(Identificacion) ON DELETE CASCADE,
FOREIGN KEY (IDProfesor) REFERENCES Profesores(Identificacion) ON DELETE CASCADE,
);