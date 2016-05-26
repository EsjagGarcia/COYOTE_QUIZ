CREATE TABLE USUARIOS (
	USUARIOS_TYPE int(1),
	USUARIO_NOMBRE varchar(20) NOT NULL,
	USUARIO_KEY int(13),
	USUARIO_CONTRASENIA varchar(100),
	PRIMARY KEY (USUARIO_NOMBRE)
);
INSERT INTO USUARIOS VALUES('2','Luis Enrique','201','pepe13');
INSERT INTO USUARIOS VALUES('3','El coordi','301','1234');
INSERT INTO USUARIOS VALUES('4','Dios','401','hola');
INSERT INTO USUARIOS VALUES('1','M@rgarito','315115879','12345678910');
/* -- */

CREATE TABLE ALUMNOS (
	ESTUDIANTE_NOMBRE varchar(60),
	USUARIO_NOMBRE varchar(20),
	USUARIO_KEY int NOT NULL,
	ALUMNO_GRUPO int,
	ALUMNO_CONTRASENIA varchar(15),
	ALUMNO_PUNTAJE int,
	ALUMNO_PARTIDAS int,
	PRIMARY KEY (USUARIO_KEY)
);
INSERT INTO ALUMNOS VALUES('Margarito Lopez','M@rgarito','315115879','501','123456789','3','5');
/* -- */

CREATE TABLE PROFESORES (
	USUARIO_KEY int(13) NOT NULL,
	USUARIO_NOMBRE varchar(20),
	PROFESOR_CONTRASENIA varchar(15),
	PROFESOR_ASIGNATURA varchar(15),
<<<<<<< HEAD
	PROFESOR_PREPA int,
	PRIMARY KEY (USUARIO_KEY)
=======
	PROFESOR_PREPA int(1),
	PRIMARY KEY (USUARIO_NOMBRE)
>>>>>>> 24490b2f7b136c31eae51e9fc82b8fcd361faae4
);
INSERT INTO PROFESORES VALUES('201','Luis Enrique','pepe13','historia','historia');
/* -- */

CREATE TABLE COORDINADORES (
	USUARIO_KEY int NOT NULL,
	USUARIO_NOMBRE varchar(20),
	CORDI_CONTRASENIA varchar(15),
	PRIMARY KEY (USUARIO_KEY)
);
INSERT INTO COORDINADORES VALUES('301','El coordi','1234');
/* -- */

CREATE TABLE ADMINS (
	USUARIO_KEY int NOT NULL,
	USUARIO_NOMBRE varchar(20),
	ADMI_CONTRASENIA varchar(15),
	PRIMARY KEY (USUARIO_KEY)
);
INSERT INTO ADMINS VALUES('401','Dios','hola');
/* -- */

CREATE TABLE MATEMATICAS (
	MATERIA varchar(15),
	INDICADOR int NOT NULL AUTO_INCREMENT,
	PREGUNTA varchar(100),
	RESPUESTA_correcta varchar(30),
	RESPUESTA_uno varchar(30),
	RESPUESTA_dos varchar(30),
	RESPUESTA_tres varchar(30),
	PRIMARY KEY(INDICADOR)
);
INSERT INTO MATEMATICAS VALUES('matematicas',1,'¿Cuál de los siguentes es un conjunto vacío?','{}','vacío','{f}','{{}}');
INSERT INTO MATEMATICAS VALUES('matematicas',2,'¿Cual es el nombre de la "chicharronera"?','Fromula general para la factorizacion de un trinomio de segundo grado',
'NO se','no existe en matematicas','Producto notable de segundo grado');
INSERT INTO MATEMATICAS VALUES('matematicas',3,'¿Cuál de los siguetes incisos es el producto notable  de (a + b) (a – b)?','a2 – b2','a+b','a-b','2a+2b');
INSERT INTO MATEMATICAS VALUES('matematicas',4,'¿Cuál es un numero imaginario?','imaginario','ai^2','ai','a');
INSERT INTO MATEMATICAS VALUES('matematicas',5,'Se dice que ____ son densos en los enteros','Reales','Enteros','Imaginarios','Negativos');
INSERT INTO MATEMATICAS VALUES('matematicas',6,'El conjunto a tine a numeros del 1 al 1323 y el conjunto b tiene las letras a y b,¿cual es su interseccion?','{ }','a yb','todos los numeros','Imaginarios');
INSERT INTO MATEMATICAS VALUES('matematicas',7,'¿Cual es el producto de notable de (a+b)^2?','a^2+2ab+b^2','a^2+b^2','a+b+a+b','a*2+b*2');
INSERT INTO MATEMATICAS VALUES('matematicas',8,'Valor de : 4!','24','96','16','8');
INSERT INTO MATEMATICAS VALUES('matematicas',9,'El valor de : a^2/a','a','a^2','1','0');
INSERT INTO MATEMATICAS VALUES('matematicas',10,'El siguente es un numero entero positivo','8','8.333','-8','01-feb');
INSERT INTO MATEMATICAS VALUES('matematicas',11,'Un numero irracional','Pi','4','8.33313213','8.33333');
INSERT INTO MATEMATICAS VALUES('matematicas',12,'¿Qué es un numero imaginario?','numero que piensas','una raiz negativa','un numero con un denominador mayor al divisor',
'un numero con un divisor mayor al denominador');