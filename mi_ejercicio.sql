CREATE SCHEMA mi_ejercicio;

USE mi_ejercicio;

CREATE TABLE empleadas (
	id_empleada INT NOT NULL PRIMARY KEY,
    salario FLOAT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    pais VARCHAR(50)
);

CREATE TABLE personas_2 (
    id_empleada INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT,
    ciudad varchar(255) DEFAULT 'Madrid'
    PRIMARY KEY (id_empleada)
    CONSTRAINT edad CHECK (edad > 16)
);

CREATE TABLE empleadas_en_proyectos (
	id_empleada INT NOT NULL,
	id_proyecto INT,
    PRIMARY KEY (id_empleada, id_proyecto),
    FOREIGN KEY (id_empleada) REFERENCES empleadas(id_empleada)
	ON DELETE CASCADE
);
    
CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
	nombre VARCHAR(100),
	apellido VARCHAR(100),
	cuidad VARCHAR(100),
	email VARCHAR(100)
);
