-- PARA EL EJERCICIO 2

DROP DATABASE IF EXISTS ejergroupby2;

CREATE DATABASE ejergroupby2 CHARACTER SET utf8mb4;

USE ejergroupby2;

CREATE TABLE mascotas (

IdMascota INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

Nombre VARCHAR(20),

Especie VARCHAR(20),

Sexo VARCHAR(1),

Jaula VARCHAR(5),

Estado VARCHAR(20)

);

INSERT INTO mascotas VALUES (NULL, 'Woody', 'Perro', 'M', 'J01', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Toby', 'Perro', 'M', 'J03', 'Adoptado');

INSERT INTO mascotas VALUES (NULL, 'Klaus', 'Gato', 'M', 'J02', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Tina', 'Perro', 'H', 'J01', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Miga', 'Gato', 'H', 'J02', 'Adoptado');

INSERT INTO mascotas VALUES (NULL, 'Tusa', 'Gato', 'H', 'J04', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Cactus', 'Gato', 'M', 'J04', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Rocky', 'Perro', 'M', 'J05', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Blas', 'Gato', 'M', 'J02', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Kimbo', 'Perro', 'M', 'J03', 'Adoptado');

INSERT INTO mascotas VALUES (NULL, 'Roma', 'Perro', 'H', 'J03', 'Adoptado');

INSERT INTO mascotas VALUES (NULL, 'Kenya', 'Perro', 'H', 'J05', 'A la espera');

INSERT INTO mascotas VALUES (NULL, 'Xena', 'Perro', 'H', 'J01', 'Adoptado');

INSERT INTO mascotas VALUES (NULL, 'Patán', 'Perro', 'M', 'J01', 'Adoptado');

INSERT INTO mascotas VALUES (NULL, 'Botas', 'Gato', 'M', 'J06', 'A la espera');

-- Ejercicio 2A --
-- Cuántas mascotas hay de cada especie. --
SELECT especie, COUNT(especie) AS cantidad FROM mascotas GROUP BY especie;

-- Ejercicio 2B --
-- Cuántos perros hay de cada sexo. --
SELECT especie,sexo,COUNT(sexo) AS cantidad FROM mascotas WHERE especie="perro" GROUP BY sexo;

-- Ejercicio 2C --
-- Cuántas mascotas hay en cada jaula.
SELECT jaula, COUNT(*) AS cantidad FROM mascotas GROUP BY jaula;
-- Lo mismo, pero solo de aquellas jaulas que tengan asociados 2 animales o menos.
SELECT jaula, COUNT(*) AS cantidad FROM mascotas GROUP BY jaula HAVING cantidad <= 2;

-- Ejercicio 2D --
-- Cuántas mascotas hay de cada especie y de cada sexo a la espera de adopción.
SELECT especie, sexo, COUNT(*) AS cantidad FROM mascotas WHERE Estado = 'A la espera' GROUP BY especie, sexo; 