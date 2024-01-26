CREATE DATABASE RegistroEM;


USE RegistroEM;



CREATE TABLE Departamentos(
IDDepartamentos INT PRIMARY KEY,
Nombre VARCHAR(50)
);

CREATE TABLE Cargos(
IDCargos INT PRIMARY KEY,
Nombre VARCHAR(50)
);

CREATE TABLE Empleados(
IDEmpleados INT PRIMARY KEY,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Cargo VARCHAR(10),
Fecha_inicio VARCHAR(50),
IDCargos INT,
FOREIGN KEY(IDCargos) REFERENCES Cargos(IDCargos),
IDDepartamentos INT,
FOREIGN KEY (IDDepartamentos) REFERENCES Departamentos(IDDepartamentos)
);

CREATE TABLE Proyectos(
IDProyectos INT PRIMARY KEY,
Nombre VARCHAR(50)
);

CREATE TABLE Empresa(
IDEmpresa INT PRIMARY KEY AUTO_INCREMENT,
NombreEMPRESA VARCHAR(59),
IDEmpleados INT,
FOREIGN KEY(IDEmpleados) REFERENCES Empleados(IDEmpleados),
IDProyectos INT,
FOREIGN KEY(IDProyectos) REFERENCES Proyectos(IDProyectos)
);


