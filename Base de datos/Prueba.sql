CREATE TABLE USUARIOS (
	USUARIO_NOMBRE varchar(20) NOT NULL,
	USUARIOS_TYPE int,
	USUARIO_KEY int,
	PRIMARY KEY (USUARIO_NOMBRE)
);
INSERT INTO USUARIOS VALUES( '1','Adriana','315115879');
INSERT INTO USUARIOS VALUES('1','Mario','315115879');
INSERT INTO USUARIOS VALUES('2','Luis Enrique','201');
INSERT INTO USUARIOS VALUES('3','El coordi','301');
INSERT INTO USUARIOS VALUES('4','Dios','401');
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
	USUARIO_KEY int NOT NULL,
	USUARIO_NOMBRE varchar(20),
	PROFESOR_CONTRASENIA varchar(15),
	PROFESOR_ASIGNATURA varchar(15),
	PROFESOR_PREPA int,
	PRIMARY KEY (USUARIO_KEY)
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

CREATE TABLE PREGUNTAS (
	PREGUNTA varchar(100),
	RESPUESTA_uno varchar(30),
	RESPUESTA_dos varchar(30),
	RESPUESTA_tres varchar(30),
	RESPUESTA_correcta varchar(30),
	PRIMARY KEY (RESPUESTA_correcta)
);