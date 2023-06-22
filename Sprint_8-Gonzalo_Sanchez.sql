--  titulo: "Tarea 2",
--  prioridad_id: 1,
--  usuario_id: 1,
--  completado: false,


CREATE TABLE usuario(
id SERIAL PRIMARY KEY,
email VARCHAR ( 255 ) UNIQUE NOT NULL,
activo BOOLEAN NOT NULL DEFAULT TRUE
) 

CREATE TABLE prioridad(
id SERIAL PRIMARY KEY,
nombre VARCHAR ( 50 ) UNIQUE NOT NULL,
descripcion VARCHAR ( 100 ) 
)

CREATE TABLE tarea(
id SERIAL PRIMARY KEY,
titulo VARCHAR ( 50 ) NOT NULL, 
completado BOOLEAN NOT NULL DEFAULT FALSE
)