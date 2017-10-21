# Laboratorio-de-Base-de-Datos

--1.-Select con group by, 2.- 2 selects con 1 columna, y 3 funciones agregadas, 3.- igual al dos pero con where, 4.- como el 3 pero con having, 5.- Select TOP 

--Group by
Select Maestro.NomMaestro
from Maestro
group by Maestro.NomMaestro 
order by Maestro.NomMaestro desc

--Funciones
Select Count(Salon.Capacidad) as 'Cuantos Caben', MAX(Salon.Capacidad) as 'Maximo Alcance', SUM(Salon.Capacidad) as 'Total'
from Salon
group by Salon.Capacidad

Select Count(Materia.NumSemestre) as 'Cuantos Caben', MAX(Materia.NumSemestre) as 'Maximo Alcance', Min(Salon.Capacidad) as 'Capacidad requerida'
from Materia, Salon
group by Materia.NumSemestre, Salon.Capacidad

--Having
Select Count(Salon.Capacidad) as 'Cuantos Caben', MAX(Salon.Capacidad) as 'Maximo Alcance', SUM(Salon.Capacidad) as 'Total'
from Salon
group by Salon.Capacidad
Having Max(Salon.Capacidad) > 40

Select Count(Salon.Capacidad) as 'Cuantos Caben', MAX(Salon.Capacidad) as 'Maximo Alcance', SUM(Salon.Capacidad) as 'Total'
from Salon
group by Salon.Capacidad
Having MIN(Salon.Capacidad) < 55

--Where
Select Count(Grupo_Materia.NumSemestre) as 'Cuantos', MAX(Grupo_Materia.NumSemestre) as 'Maximo', SUM(Grupo_Materia.NumSemestre) as 'Sumatoria'
from Grupo_Materia
Where NumSemestre = 4 and IdGrupo = 6666666 

Select Count(Materia.MatCred) as 'Cuantos', MAX(Materia.MatCred) as 'Maximos Creditos', SUM(Materia.MatCred) as 'En total'
from Materia
Where IdMateria > 3333333

--TOP
Select TOP 2 Salon.Capacidad
from Salon
group by Salon.Capacidad
order by Salon.Capacidad asc
