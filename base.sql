/* drop database if exists Senati;
create database Senati;
use Senati;

create table CFP (
	id int auto_increment primary key,
    RazonSocial char(30) not null,
    Codigo char(15) unique );
    
create table Especialidad (
	id int auto_increment primary key,
    Detalle char(80) unique );
    
create table Docente (
	id int auto_increment primary key,
    Dni char(8) unique,
    Nombres char(25) unique,
    Apellidos char(40) unique,
    Celular char(12) unique,
    CorreoPersonal char(50) unique,
    CorreoInstitucial char(50) unique,
    idEspeciales int references Especialidad);
    
create table Alumnos (
	id int auto_increment primary key,
    Dni char(8) unique,
    Nombres char(25) unique,
    Apellidos char(40) unique,
    Celular char(12) unique,
    CorreoPersonal char(50) unique,
    CorreoInstitucial char(50) unique,
    Estado char(10) not null );
    
create table Carrera (
	id int auto_increment primary key,
    Detalle char(30) unique,
    Iniciales char(10) not null );
    
create table Matricula(
	id int auto_increment primary key,
    Semestre char(3) not null,
    idCarrera int references Carrera,
    ciclo char(10) not null,
    turno char(6) not null,
    codigo char(15) unique );
    
	create table Aulas(
		id int auto_increment primary key,
        codigo char(15) unique,
        piso int not null,
        nAlumnos int not null,
        idTipo int references Especialidad,
        idEstado char references Alumnos );
        
	create table Curso(
		id int auto_increment primary key,
        nombre char(25) not null,
        creditos int not null,
        horas char(20) not null );
*/