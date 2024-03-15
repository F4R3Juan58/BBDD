CREATE DATABASE IF NOT EXISTS GroupBy_Evaluar; 
USE GroupBy_Evaluar;
CREATE TABLE IF NOT EXISTS visitantes(
  nombre varchar(30),
  edad tinyint unsigned,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11),
  montocompra decimal (6,2) unsigned
 );

 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Susana Molina', 28,'f','Colon 123','Cordoba',null,45.50); 
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',0);
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Teresa Garcia',33,'f','Gral. Paz 123','Alta Gracia','03547123456',0);
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',25);
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia','03547121212',53.50);
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Roxana Lopez',20,'f','Triunvirato 345','Alta Gracia',null,0);
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
 insert into visitantes (nombre,edad, sexo,domicilio,ciudad,telefono,montocompra)
  values ('Juan Torres',43,'m','Sarmiento 876','Cordoba','4988778',15.30);
  SELECT * FROM visitantes;
  
  -- Ejercicio 1 --
  SELECT ciudad FROM visitantes GROUP BY ciudad;
  
  -- Ejercicio 2 -- 
  SELECT DISTINCT ciudad visitantes;
  
  -- Ejercicio 3 --
  SELECT COUNT(nombre),ciudad FROM visitantes GROUP BY ciudad;
  
  -- Ejercicio 4 --
  SELECT COUNT(nombre),telefono,ciudad FROM visitantes WHERE telefono IS NOT NULL GROUP BY ciudad;
  
  -- EJercicio 5 --
  SELECT SUM(montocompra),sexo FROM visitantes GROUP BY sexo; 
  
  -- EJercicio 6 --
  SELECT MAX(montocompra) AS 'Maximo',MIN(montocompra) AS 'Minimo',sexo FROM visitantes GROUP BY sexo;
  
  -- Ejercicio 7 --
   SELECT AVG(montocompra),ciudad FROM visitantes GROUP BY ciudad; 
   
  -- Ejercicio 8 --
  SELECT COUNT(nombre),ciudad,sexo FROM visitantes GROUP BY ciudad,sexo;
  
  -- Ejercicio 9 --
  SELECT COUNT(nombre),ciudad FROM visitantes GROUP BY ciudad HAVING ciudad<>'Cordoba';