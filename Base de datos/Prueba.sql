CREATE TABLE USUARIOS (
	USUARIOS_TYPE int(1),
	USUARIO_NOMBRE varchar(20) NOT NULL,
	USUARIO_KEY int(13),
	USUARIO_CONTRASENIA varchar(100),
	COLOR varchar(7),
	PRIMARY KEY (USUARIO_NOMBRE)
);
INSERT INTO USUARIOS VALUES('2','LuisEnrique','201','pepe1313','#c79810');
INSERT INTO USUARIOS VALUES('3','Elcoordi','301','123456789','#c79810');
INSERT INTO USUARIOS VALUES('4','ElDios','401','holaholas','#62d53c');
INSERT INTO USUARIOS VALUES('1','Margarito','315115879','12345678910','#c79810');
/* -- */

CREATE TABLE ALUMNOS (
	ESTUDIANTE_NOMBRE varchar(60),
	USUARIO_NOMBRE varchar(20),
	USUARIO_KEY int NOT NULL,
	ALUMNO_GRUPO int,
	ALUMNO_PUNTAJE int,
	ALUMNO_PARTIDAS int,
	PRIMARY KEY (USUARIO_KEY)
);
INSERT INTO ALUMNOS VALUES('Margarito Lopez','Margarito','315115879','501','3','5');
/* -- */

CREATE TABLE PROFESORES (
	USUARIO_KEY int(13) NOT NULL,
	USUARIO_NOMBRE varchar(20),
	PROFESOR_ASIGNATURA varchar(15),
	PROFESOR_PREPA int(1),
	PRIMARY KEY (USUARIO_NOMBRE)
);
INSERT INTO PROFESORES VALUES('201','LuisEnrique','historia','101');
/* -- */

CREATE TABLE COORDINADORES (
	USUARIO_KEY int NOT NULL,
	USUARIO_NOMBRE varchar(20),
	PRIMARY KEY (USUARIO_NOMBRE)
);
INSERT INTO COORDINADORES VALUES('301','Elcoordi');
/* -- */

CREATE TABLE ADMINS (
	USUARIO_KEY int NOT NULL,
	USUARIO_NOMBRE varchar(20),
	PRIMARY KEY (USUARIO_NOMBRE)
);
INSERT INTO ADMINS VALUES('401','Dios');
/* -- */

CREATE TABLE PREGUNTAS (
	MATERIA varchar(15),
	INDICADOR int(4),
	PREGUNTA varchar(100),
	RESPUESTA_CORRECTA varchar(30),
	RESPUESTA_UNO varchar(30),
	RESPUESTA_DOS varchar(30),
	RESPUESTA_TRES varchar(30),
	PRIMARY KEY (INDICADOR)
);
INSERT INTO PREGUNTAS VALUES('matematicas',1,'¿Cuál de los siguentes es un conjunto vacío?','{}','vacío','{f}','{{}}');
INSERT INTO PREGUNTAS VALUES('matematicas',2,'¿Cual es el nombre de la "chicharronera"?','Fromula general para la factorizacion de un trinomio de segundo grado',
'NO se','no existe en matematicas','Producto notable de segundo grado');
INSERT INTO PREGUNTAS VALUES('matematicas',3,'¿Cuál de los siguetes incisos es el producto notable  de (a + b) (a – b)?','a2 – b2','a+b','a-b','2a+2b');
INSERT INTO PREGUNTAS VALUES('matematicas',4,'¿Cuál es un numero imaginario?','imaginario','ai^2','ai','a');
INSERT INTO PREGUNTAS VALUES('matematicas',5,'Se dice que ____ son densos en los enteros','Reales','Enteros','Imaginarios','Negativos');
INSERT INTO PREGUNTAS VALUES('matematicas',6,'El conjunto a tine a numeros del 1 al 1323 y el conjunto b tiene las letras a y b,¿cual es su interseccion?','{}','a yb',
'todos los numeros','Imaginarios');
INSERT INTO PREGUNTAS VALUES('matematicas',7,'¿Cual es el producto de notable de (a+b)^2?','a^2+2ab+b^2','a^2+b^2','a+b+a+b','a*2+b*2');
INSERT INTO PREGUNTAS VALUES('matematicas',8,'Valor de : 4!','24','96','16','8');
INSERT INTO PREGUNTAS VALUES('matematicas',9,'El valor de : a^2/a','a','a^2','1','0');
INSERT INTO PREGUNTAS VALUES('matematicas',10,'El siguente es un numero entero positivo','8','8.333','-8','01-feb');
INSERT INTO PREGUNTAS VALUES('matematicas',11,'Un numero irracional','Pi','4','8.33313213','8.33333');
INSERT INTO PREGUNTAS VALUES('matematicas',12,'¿Qué es un numero imaginario?','numero que piensas','una raiz negativa','un numero con un denominador mayor al divisor',
'un numero con un divisor mayor al denominador');