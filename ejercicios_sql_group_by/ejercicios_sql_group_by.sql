-- PARA EL EJERCICIO 1

DROP DATABASE IF EXISTS ejergroupby;

CREATE DATABASE ejergroupby CHARACTER SET utf8mb4;

USE ejergroupby;

CREATE TABLE empleados (

IdEmpleado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

Nombre VARCHAR(20),

Apellido VARCHAR(20),

F_nacimiento DATE,

Sexo VARCHAR(1),

Puesto VARCHAR(20),

Salario INT

);

INSERT INTO empleados VALUES (NULL, 'Carlos', 'Rubio', '1975-05-12', 'H', 'Almacén', 1500);

INSERT INTO empleados VALUES (NULL, 'Elena', 'Jiménez', '1986-09-06', 'M', 'Administración', 1400);

INSERT INTO empleados VALUES (NULL, 'José', 'Rodríguez', '2000-03-17', 'H', 'Almacén', 1000);

INSERT INTO empleados VALUES (NULL, 'María', 'Calvo', '1995-12-12', 'M', 'Marketing', 1700);

INSERT INTO empleados VALUES (NULL, 'Ana', 'Ruiz', '1960-01-25', 'M', 'Dirección', 2000);

INSERT INTO empleados VALUES (NULL, 'Alberto', 'García', '1972-04-13', 'H', 'Administración', 1300);

INSERT INTO empleados VALUES (NULL, 'Luis', 'Sánchez', '1990-08-30', 'H', 'Marketing', 1600);

-- Ejercicio 1A --
-- Cuántos empleados hay de cada sexo. --
SELECT COUNT(sexo), sexo FROM empleados GROUP BY Sexo;
-- Cuántos empleados son mujeres.--
SELECT COUNT(sexo), sexo FROM empleados WHERE sexo<>"m" GROUP BY Sexo;

-- Ejercico 1B --
-- Salario medio, máximo y mínimo por cada sexo. --
SELECT MAX(salario) AS Maximo ,MIN(salario) AS Minimo ,AVG(salario) AS Medio, sexo FROM empleados GROUP BY sexo;
-- Lo mismo, pero que solo se muestren esos datos del sexo que tiene un salario medio mayor de 1500.--
SELECT MAX(salario) AS Maximo ,MIN(salario) AS Minimo ,AVG(salario) AS Medio, sexo FROM empleados GROUP BY sexo HAVING Medio>1500;
-- Lo mismo que b.1, pero que se muestren también esos datos del sexo que cumpla que tiene un salario mínimo inferior o igual a 1000. --
SELECT MAX(salario) AS Maximo ,MIN(salario) AS Minimo ,AVG(salario) AS Medio, sexo FROM empleados GROUP BY sexo HAVING Minimo<=1000;
-- Lo mismo que b, pero solo para los empleados del departamento de Administración. --
SELECT MAX(salario),MIN(salario),AVG(salario) FROM empleados WHERE Puesto="Administración" GROUP BY puesto;
