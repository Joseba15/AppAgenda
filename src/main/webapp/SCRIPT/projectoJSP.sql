CREATE TABLE usuario(
	userId INT AUTO_INCREMENT,
	nombreUsuario VARCHAR(20)unique,
	contrasena VARCHAR(25),
	CONSTRAINT pk_usuario PRIMARY KEY (userId)
);

CREATE TABLE evento (
	id INT AUTO_INCREMENT,
	descripcion VARCHAR(30),
	fecha DATE,
	hora DOUBLE,
	activo BOOLEAN,
	userId INT,
	
	
	CONSTRAINT fk_evento FOREIGN KEY (userId) REFERENCES usuario(userId),
	CONSTRAINT pk_evento PRIMARY KEY (id)
);