INSERT INTO Estudiantes (Identificacion, apellido, nombre, edad, correo, celular, grado)
VALUES
(2345678900, 'Lopez', 'Pedro', 18, 'pedro@gmail.com', 3234567890, 11),
(3456789011, 'Gutierrez', 'Luisa', 20, 'luisa@gmail.com', 3345678901, 10),
(4567890122, 'Martinez', 'Diego', 22, 'diego@gmail.com', 3456789012, 9),
(5678901233, 'Sanchez', 'Sofia', 21, 'sofia@gmail.com', 3567890123, 12),
(6789012344, 'Perez', 'Ana', 19, 'ana@gmail.com', 3678901234, 10),
(7890123455, 'Ramirez', 'Carlos', 20, 'carlos@gmail.com', 3789012345, 11),
(8901234566, 'Hernandez', 'Luis', 22, 'luis@gmail.com', 3901234567, 9),
(9012345677, 'Diaz', 'Elena', 21, 'elena@gmail.com', 3012345678, 10),
(1231231238, 'Gomez', 'Maria', 19, 'maria@gmail.com', 3123123121, 12),
(2342342349, 'Torres', 'Andres', 20, 'andres@gmail.com', 3234234234, 11);

INSERT INTO Profesores (Identificacion, apellido, nombre, celular, correo, Nombre_Asignatura)
VALUES
(8765432100, 'Gomez', 'Juan', 3334567890, 'juan.profesor@gmail.com', 'Ciencias Sociales'),
(7654321091, 'Diaz', 'Elena', 3101234567, 'elena.profesora@gmail.com', 'Música'),
(6543210982, 'Perez', 'Sofia', 3012345678, 'sofia.profesora@gmail.com', 'Educación Física'),
(5432109873, 'Ramirez', 'Diego', 3123456789, 'diego.profesor@gmail.com', 'Química'),
(4321098764, 'Lopez', 'Maria', 3234567890, 'maria.profesora@gmail.com', 'Arte'),
(3210987655, 'Garcia', 'Luis', 3345678901, 'luis.profesor@gmail.com', 'Historia'),
(2109876546, 'Martinez', 'Pedro', 3567890123, 'pedro.profesor@gmail.com', 'Geografía'),
(1098765437, 'Sanchez', 'Ana', 3678901234, 'ana.profesora@gmail.com', 'Biología'),
(9876543218, 'Hernandez', 'Carlos', 3123123121, 'carlos.profesor@gmail.com', 'Física');

INSERT INTO Matricula (IDEstudiante, IDProfesor, Nombre_Asignatura)
VALUES
(2345678900, 8765432100, 'Ciencias Sociales'),
(3456789011, 7654321091, 'Música'),
(4567890122, 6543210982, 'Educación Física'),
(5678901233, 5432109873, 'Química'),
(6789012344, 4321098764, 'Arte'),
(7890123455, 3210987655, 'Historia'),
(8901234566, 2109876546, 'Geografía'),
(9012345677, 1098765437, 'Biología'),
(1231231238, 9876543218, 'Física'),
(2342342349, 8765432109, 'Inglés');


INSERT INTO Estudiantes (Identificacion, apellido, nombre, edad, correo, celular, grado)
VALUES
(1234567890, 'Gomez', 'Juan', 20, 'juan@gmail.com', 3123456789, 11),
(2345678901, 'Martinez', 'Ana', 19, 'ana@gmail.com', 3212345678, 10),
(3456789012, 'Rodriguez', 'Carlos', 21, 'carlos@gmail.com', 3334567890, 9),
(4567890123, 'Ramirez', 'Laura', 22, 'laura@gmail.com', 3345678901, 12),
(5678901234, 'Diaz', 'Andres', 19, 'andres@gmail.com', 3567890123, 10),
(6789012345, 'Lopez', 'Maria', 20, 'maria@gmail.com', 3678901234, 11),
(7890123456, 'Perez', 'Luis', 21, 'luis@gmail.com', 3789012345, 9),
(8901234567, 'Hernandez', 'Sofia', 20, 'sofia@gmail.com', 3901234567, 10),
(9012345678, 'Torres', 'Diego', 22, 'diego@gmail.com', 3012345678, 11),
(1231231231, 'Sanchez', 'Elena', 19, 'elena@gmail.com', 3123123121, 10);

INSERT INTO Profesores (Identificacion, apellido, nombre, celular, correo, Nombre_Asignatura)
VALUES
(9876543210, 'Perez', 'Maria', 3156789012, 'maria@gmail.com', 'Matemáticas'),
(8765432109, 'Lopez', 'Juan', 3001234567, 'juan.profesor@gmail.com', 'Historia'),
(7654321098, 'Garcia', 'Luis', 3109876543, 'luis.profesor@gmail.com', 'Física'),
(6543210987, 'Gutierrez', 'Pedro', 3234567890, 'pedro.profesor@gmail.com', 'Química'),
(5432109876, 'Hernandez', 'Luisa', 3101234567, 'luisa.profesora@gmail.com', 'Inglés'),
(4321098765, 'Martinez', 'Carlos', 3012345678, 'carlos.profesor@gmail.com', 'Biología'),
(3210987654, 'Ramirez', 'Ana', 3123456789, 'ana.profesora@gmail.com', 'Geografía'),
(2109876543, 'Diaz', 'Luis', 3334567890, 'luis.profesor@gmail.com', 'Arte'),
(1098765432, 'Gomez', 'Sofia', 3345678901, 'sofia.profesora@gmail.com', 'Música'),
(9876543211, 'Sanchez', 'Diego', 3567890123, 'diego.profesor@gmail.com', 'Educación Física');

INSERT INTO Matricula (IDEstudiante, IDProfesor, Nombre_Asignatura)
VALUES
(1234567890, 9876543210, 'Matemáticas'),
(2345678901, 8765432109, 'Historia'),
(3456789012, 7654321098, 'Física'),
(4567890123, 6543210987, 'Química'),
(5678901234, 5432109876, 'Inglés'),
(6789012345, 4321098765, 'Biología'),
(7890123456, 3210987654, 'Geografía'),
(8901234567, 2109876543, 'Arte'),
(9012345678, 1098765432, 'Música'),
(1231231231, 9876543211, 'Educación Física');
