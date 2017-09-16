Create Table Maestro(
IdMaestro int, nombreMaestro varchar(40),
IdMateria int, Pago Money
)

Create Table Grupo(
IdGrupo int, numSalon TinyInt,
IdMateria int
)

Create Table Dato(
datNom varchar (20), datNac Date, 
datApe varchar(20), datCarrera varchar(40), 
datSexo text, IdDato int 
)

Create Table Carrera(
IdCarrera int, nombreCarrera varchar(40), 
Semestre TinyInt, IdNivel int 
)

Create Table Materia(
IdMateria int, matNom varchar(20), 
matCred int, IdMaestro int, 
Duracion Time
)

Create Table Nivel(
IdNivel int, nomNivel varchar(40)
)

Create Table Turno(
IdTurno int, tipoTurno varchar (20)
);


