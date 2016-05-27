CREATE TABLE usuarios(
	usuario_nombre varchar(25) NOT NULL,
	usuario_contra varchar(20),
	usuario_libre char(2),
	usuario_turno varchar(4),
	PRIMARY KEY (usuario_nombre)
);
INSERT INTO usuarios VALUES('Rey','Hola123','si','nulo');
INSERT INTO usuarios VALUES('Pariente','Hola123','si','nulo');
INSERT INTO usuarios VALUES('Fierro','Hola123','si','nulo');
INSERT INTO usuarios VALUES('Papu','Hola123','si','nulo');
INSERT INTO usuarios VALUES('Cesar','Hola123','si','nulo');
