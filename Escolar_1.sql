use Escolar_1

select *
from Maestro

Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (NEWID(), NEWID(), 'Eleazar', 'Fuentes Oaxaca', '10-10-86')
Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (NEWID(), NEWID(), 'Guillermo', 'Sánchez M.', '11-11-85')
Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (NEWID(), NEWID(), 'Romeo', 'A. Sánchez', '10-10-84')
Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (NEWID(), NEWID(), 'Yenny', 'Rivera', '08-10-80')

Update Maestro set NomMaestro = 'Edgar' 
where IdMaestro = '806DDFBF-745A-46E8-8FCF-77A04EB49E0C'
delete from Maestro
where IdMaestro = '687F52C0-1150-489D-8A42-333358E968DB'

Select *
from Titulo

Insert into Titulo(IdTitulo, nomTitulo)
values(NEWID(), 'Lic. Ciencias Computacionales')
Insert into Titulo(IdTitulo, nomTitulo)
values(NEWID(), 'Ing. Industrial Administrador')
Insert into Titulo(IdTitulo, nomTitulo)
values(NEWID(), 'Lic. Multimedia Animacion Digital')
Insert into Titulo(IdTitulo, nomTitulo)
values(NEWID(), 'Lic. Agronomia')

Update Titulo set nomTitulo = 'Lic. Biotecnologia'
where IdTitulo = 'BFC21A3A-3613-45FF-8B31-5FBDB6CF4A85'
delete from Titulo
where IdTitulo = '263EAA87-099B-40F8-8454-EF0865A091F1'

Select *
from Maestro_Titulo

Insert into Maestro_Titulo(IdMaestro, IdTitulo)
values('CE90AA57-FBED-4EBA-A0D0-1ED1125D03D3','BFC21A3A-3613-45FF-8B31-5FBDB6CF4A85')
Insert into Maestro_Titulo(IdMaestro, IdTitulo)
values('686EFCA7-AF70-4384-90E4-63C1E27AD56E','22111523-84B0-4A22-87AA-DFD5C7D685F7')
Insert into Maestro_Titulo(IdMaestro, IdTitulo)
values('806DDFBF-745A-46E8-8FCF-77A04EB49E0C','C4D2F663-AF34-4242-92A7-E5E0A5FC6313')

Select *
from Materia

Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (NEWID(), NEWID(), 'Calculo Diferencial', '8', '4', NEWID())
Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (NEWID(), NEWID(), 'Calculo Integral', '10', '4', NEWID())
Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (NEWID(), NEWID(), 'Base de Datos', '11', '1', NEWID())
Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (NEWID(), NEWID(), 'Algebra', '9', '2', NEWID())

Update Materia set NumFrecuencia = '6'
where IdMateria = '313081A9-35ED-4C92-B9C3-E54B89566351'
delete from Materia
where IdMateria = '799DE82E-4EB1-4CE9-A462-4604EB56F73F'

Select *
from Materia_Maestro

Insert into Materia_Maestro(IdMateriaMaestro, IdMateria, IdMaestro)
values(NEWID(), '70190AF5-96CE-44E9-A013-CC77EDD99A75', 'CE90AA57-FBED-4EBA-A0D0-1ED1125D03D3')
Insert into Materia_Maestro(IdMateriaMaestro, IdMateria, IdMaestro)
values(NEWID(), '313081A9-35ED-4C92-B9C3-E54B89566351', '686EFCA7-AF70-4384-90E4-63C1E27AD56E')
Insert into Materia_Maestro(IdMateriaMaestro, IdMateria, IdMaestro)
values(NEWID(), 'C266077A-C0E1-41DC-A018-F4405D12E9A8', '806DDFBF-745A-46E8-8FCF-77A04EB49E0C')

Select *
from Grupo

Insert into Grupo(IdGrupo, IdSalon, IdTurmo)
values(NEWID(), '560D9D42-473B-4FBD-B7C6-A6AC06B8B655','M')
Insert into Grupo(IdGrupo, IdSalon, IdTurmo)
values(NEWID(), '84C53C00-31FC-4010-BE06-B002C5B0389B','N')
Insert into Grupo(IdGrupo, IdSalon, IdTurmo)
values(NEWID(), '412497D9-10C3-480D-B47C-F5D92F1C727E','V')

Select *
from Grupo_Materia

Insert into Grupo_Materia(IdGrupoMateria, IdMateriaMaestro, IdGrupo, Hora, NumSemestre)
values(NEWID(), '3F867DD1-0C52-49C7-B621-0084593AA3B9', 'D3D600DD-B183-4CCA-8024-1183CCC93DA8', '23:00','4')
Insert into Grupo_Materia(IdGrupoMateria, IdMateriaMaestro, IdGrupo, Hora, NumSemestre)
values(NEWID(), 'B4843690-B372-46CF-815B-5129598E5C4E', '6249A0A3-E326-443C-A900-E6280E6DAA33', '20:00','3')
Insert into Grupo_Materia(IdGrupoMateria, IdMateriaMaestro, IdGrupo, Hora, NumSemestre)
values(NEWID(), '7E8E62A3-C53B-4F8A-9814-74F91C6D6EFD', 'E66EDFD5-1CFF-46F3-A2B8-EBBD343B05DE', '18:00','4')

update Grupo_Materia set Hora = '16:00'
where IdGrupoMateria = 'FDCF986F-936A-497A-8E2E-18A3A8C2D419'

Select *
from Salon

Insert into Salon (IdSalon, Capacidad)
values(NEWID(), '50')
Insert into Salon (IdSalon, Capacidad)
values(NEWID(), '48')
Insert into Salon (IdSalon, Capacidad)
values(NEWID(), '39')
Insert into Salon (IdSalon, Capacidad)
values(NEWID(), '35')

Update Salon set Capacidad = '55' 
where IdSalon = '412497D9-10C3-480D-B47C-F5D92F1C727E'
Update Salon set Capacidad = '40' 
where IdSalon = '84C53C00-31FC-4010-BE06-B002C5B0389B'
delete from Salon
where IdSalon = 'A4D07626-CCB8-4809-8057-FDC8B1FE8E16'

Select *
from Turno

Insert into Turno(IdTurno, TipoTurno)
values('M', 'M')
Insert into Turno(IdTurno, TipoTurno)
values('V', 'V')
Insert into Turno(IdTurno, TipoTurno)
values('N', 'N')
Insert into Turno(IdTurno, TipoTurno)
values('K', 'm')

delete from Turno
where TipoTurno = 'K'


