CREATE SCHEMA IF NOT EXISTS ejercicio_modificacion;
USE ejercicio_modificacion;

CREATE TABLE tabla_1 (
	a INTEGER,
    b CHAR(10)
);

-- 1
RENAME TABLE tabla_1 TO tabla_2;

-- 2
ALTER TABLE tabla_2
MODIFY COLUMN a TINYINT NOT NULL;

SELECT *
FROM tabla_2;

-- 3
ALTER TABLE tabla_2
MODIFY COLUMN b CHAR(20);

ALTER TABLE tabla_2
RENAME COLUMN b TO c;

-- 4
ALTER TABLE tabla_2
ADD COLUMN d TIMESTAMP;

-- 5
ALTER TABLE tabla_2
DROP COLUMN c;

SELECT *
FROM tabla_2;

-- 6
CREATE TABLE tabla_3 LIKE tabla_2;

SELECT *
FROM tabla_3;

SELECT *
FROM tabla_2;

-- 7
DROP TABLE IF EXISTS tabla_2;

RENAME TABLE tabla_3 TO tabla_1;

SELECT *
FROM tabla_1;