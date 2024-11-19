CREATE SCHEMA IF NOT EXISTS database;

SELECT * FROM information_schema.schemata;

CREATE sequence if not exists id_duckdb_sequence start 1;

SELECT * FROM pg_catalog.pg_sequences;	

CREATE table if not exists database.duckdb (
	id INTEGER DEFAULT nextval('id_duckdb_sequence'),
	word STRING,
	description STRING, learnt STRING
);

-- tables for each glossary table 
CREATE TABLE IF NOT EXISTS database.sql (
	word STRING,
	description STRING);

CREATE SCHEMA IF NOT EXISTS programming;

CREATE TABLE IF NOT EXISTS programming.python (
	word STRING,
	description STRING);

CREATE TABLE IF NOT EXISTS programming.c_sharp (
	word STRING,
	description STRING);
