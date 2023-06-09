Create Table Alumnos_Tesoem(	
Id Number(5) Primary Key, 
Matricula Number(15),
Constraint UN_Matricula UNIQUE (Matricula),
Nombre Char(25) default '' not null, 
A_Paterno Char(15), 
A_Materno Char(15), 
Carrera Char(70), 
Grupo Nvarchar2(10), 
Semestre Number(10)
Constraint Ch_Semestre Check (Semestre In(1,2,3,4,5,6,7,8,9)), 
Edificio Nvarchar2(10), 
Promedio Number(5));

select*from Alumnos_Tesoem;

drop table Alumnos_Tesoem;
  
create or replace procedure pa_insert
(a_id in number default 0,a_matricula in number default 'Matricula', a_nombre in char default 'Nombre', a_apellidoP in char default 'Apellido Paterno', a_apellidoM in char default 'Apellido Materno', a_carrera in char default 'Carrera', 
a_grupo in nvarchar2 default 'Grupo', a_semestre number default 0, a_edificio in nvarchar2 default 'Edificio', a_promedio in number default 0)
as
begin
    insert into Alumnos_Tesoem values(a_id, a_matricula, a_nombre, a_apellidoP, a_apellidoM, a_carrera, a_grupo, a_semestre, a_edificio, a_promedio);
end;

/*-----------------------------------GASTRONOMIA---------------------------------------------------*/
Execute pa_insert (1,190020057,'Kenia Daniela','Montes','Espinosa','Gastronomia','8G12',8, 'C', 86);
Execute pa_insert (2,190020065,'Nora Lizeth','Vazquez','Corona','Gastronomia','8G12',8, 'C', 89);
Execute pa_insert (3,190020069,'Alexis','Chavez','Qui�ones','Gastronomia','8G12',8, 'C', 83);
Execute pa_insert (4,190020068,'Axel Yair','Tellez','Bermudez','Gastronomia','8G12',8, 'C', 80);
Execute pa_insert (5,190020100,'Fransisco Xavier','Gutierrez','Cruz','Gastronomia','8G12',8, 'C', 80);
Execute pa_insert (6,190020085,'Bruno','Salas','Rodriguez','Gastronomia','8G12',8, 'C', 90);
Execute pa_insert (7,190020105,'Nubia Yadira','Corona','Espinosa','Gastronomia','8G12',8, 'C', 80);
Execute pa_insert (8,190020104,'America Atziri','Inclan','Malagon','Gastronomia','8G12',8, 'C', 85);
Execute pa_insert (9,190020058,'Gabriela Monserrat','Macedo','Andrade','Gastronomia','8G12',8, 'C', 90);
Execute pa_insert (10,190020077,'Rafael','Valencia','Hern�ndez','Gastronomia','8G12',8, 'C', 84);
/*-----------------------------------ENERGIAS RENOVABLES---------------------------------------------------*/
Execute pa_insert (11,185010032,'Zaira Elisa','Castillo','Mejia','Energias Renovables','8E11',8,'I',75);
Execute pa_insert (12,225020008,'Bitia','Ramales','L�pez','Energias Renovables','2ER11',2,'I',95);
Execute pa_insert (13,225022008,'Eduardo','Mart�nez','Cazares','Energias Renovables','8E11',8,'I',86);
Execute pa_insert (14,195020008,'Juan','Reyes','Barrios','Energias Renovables','8E11',8,'I',87);
Execute pa_insert (15,195020004,'Jes�s Uriel','Valdez','Bobadilla','Energias Renovables','7E11',7,'I',88);
Execute pa_insert (16,205020016,'Jonathan','Escalona','Dominguez','Energias Renovables','6E11',6,'I',86);
Execute pa_insert (17,225020001,'Saul Pedro','Sanchez','Sanchez','Energias Renovables','7E11',7,'I',79);
Execute pa_insert (18,225020002,'Ingrid Airin','Hernandez','Navarrete','Energias Renovables','2E11',2,'I',89);
Execute pa_insert (19,225020011,'Rafael','Espinosa','Antonio','Energias Renovables','2E11',2,'I',82);
Execute pa_insert (20,225020007,'Eder Emerson','Arrucha','Alarcon','Energias Renovables','2E11',2,'I',94);
/*-----------------------------------ADMINISTRACION---------------------------------------------------*/
execute pa_insert (21,202020059,'Gael Uriel','Lopez','Tolentino','Administracion','6IAD11',6,'D',89);
execute pa_insert (22,192010055,'Juan Carlos','Gutierrez','Palacios','Administracion','6IAD11',6,'D',87);
execute pa_insert (23,202020011,'israel','Salazar','Ramirez','Administracion','6IAD11',6,'D',90);
execute pa_insert (24,202020036,'Fernanda','Santana','Pati�o','Administracion','5AD11',5,'D',90);
execute pa_insert (25,192020021,'Frida Fernanda','Sanchez','Plaza','Administracion','8IAD11',8,'D',97);
execute pa_insert (26,192020027,'Yasmin','Hernandez','Santiago','Administracion','8IAD11',8,'D',96);
execute pa_insert (27,192022001,'Angel','Guerrero','Rodriguez','Administracion','7IAD11',7,'D',83);
execute pa_insert (28,192020072,'Jesica','Razo','Quiroz','Administracion','8IAD11',8,'D',90);
execute pa_insert (29,192020103,'Ulises','Cisneros','Dominguez','Administracion','8IAD11',8,'D',87);
execute pa_insert (30,212020086,'Lesslie Guadalupe','Luna','Monroy','Administracion','4AD12',4,'D',87);
/*-----------------------------------SISTEMAS AUTOMOTRIZ---------------------------------------------------*/
execute pa_insert (31,219010005,'David', 'Mu�oz','Rodr�guez', 'Sistemas Automotrices','5SA11',5,'E',81);
execute pa_insert (32,219010006,'Carlos Eduardo', 'Vazquez','Corona', 'Sistemas Automotrices','5SA11',5,'E',80);
execute pa_insert (33,239013001,'Edmundo Miguel', 'Sanchez','Alto', 'Sistemas Automotrices','5SA11',5,'E',70);
execute pa_insert (34,219010013,'Manuel', 'De la Trinidad','Hernandez', 'Sistemas Automotrices','5SA11',5,'E',78);
execute pa_insert (35,229020040,'Luis Manuel', 'Castillo','Torres', 'Sistemas Automotrices','2SA11',2,'D',83);
execute pa_insert (36,219010007,'Guillermo', 'Hernandez','Montesinos', 'Sistemas Automotrices','5SA11',5,'E',70);
execute pa_insert (37,219010008,'jairo', 'Zamudio','Juarez', 'Sistemas Automotrices','5SA11',5,'E',81);
execute pa_insert (38,219013002,'Jorge', 'Gonzalez','Carranza', 'Sistemas Automotrices','5SA11',5,'E',78);
execute pa_insert (39,219010009,'Juan Pablo', 'Hernandez','Morales', 'Sistemas Automotrices','5SA11',5,'E',70);
execute pa_insert (40,219010010,'Antonio', 'Salazar','Perez', 'Sistemas Automotrices','5SA11',5,'E',80);
/*-----------------------------------INGENIERIA AMBIENTAL---------------------------------------------------*/
execute pa_insert (41,214020015,'Jesus Rodrigo', 'Linares','Martinez', 'Ingenieria Ambiental','4A11',4,'H',79);
execute pa_insert (42,214020009,'Isabel Naomi', 'Cabrera','Salgado', 'Ingenieria Ambiental','4A11',4,'H',82);
execute pa_insert (43,214020012,'Raul Alejandro', 'Navarrete','Cruz', 'Ingenieria Ambiental','4A11',4,'H',90);
execute pa_insert (44,214020003,'Asael David', 'Corona','Luna', 'Ingenieria Ambiental','4A11',4,'H',86);
execute pa_insert (45,214002022,'Manuel Isaac', 'Caba�as','Pineda', 'Ingenieria Ambiental','4A11',4,'H',85);
execute pa_insert (46,214020033,'Miguel Angel', 'Juarez','Torres', 'Ingenieria Ambiental','4A11',4,'H',82);
execute pa_insert (47,214020035,'Ismael', 'Hernadez','Juarez', 'Ingenieria Ambiental','4A11',4,'H',80);
execute pa_insert (48,214020019,'Jesus Eduardo', 'Chiquini','Lopez', 'Ingenieria Ambiental','4A11',4,'H',88);
execute pa_insert (49,214020024,'Gemma Yamilet', 'Martinez','Cruz', 'Ingenieria Ambiental','4A11',4,'H',70);
execute pa_insert (50,214020032,'Marivel', 'Estrada','Miranda', 'Ingenieria Ambiental','4A11',4,'H',90);
/*-----------------------------------INGENIERIA INDUSTRIAL---------------------------------------------------*/
execute pa_insert (51,233012005,'Raul Alejandro', 'Rangel','Ramirez', 'Ingenieria Industrial','7I11',7,'F',88);
execute pa_insert (52,233012006,'Sergio', 'Suarez','Corona', 'Ingenieria Industrial','7I11',7,'F',87);
execute pa_insert (53,203010014,'Juan de Dios', 'Sanchez','Duran', 'Ingenieria Industrial','7I11',7,'F',95);
execute pa_insert (54,213020002,'Jaqueline', 'Anastacio','Bravo', 'Ingenieria Industrial','4I11',4,'F',84);
execute pa_insert (55,213020028,'Edith', 'Miran','Sepulveda', 'Ingenieria Industrial','4I11',4,'F',85);
execute pa_insert (56,213020021,'Estefania', 'Segovia','Ocote', 'Ingenieria Industrial','4I11',4,'F',89);
execute pa_insert (57,213020020,'Alenka Michelle', 'Sandoval','Salas', 'Ingenieria Industrial','4I11',4,'F',80);
execute pa_insert (58,213020023,'Yoselin', 'Hernandez','Ramos', 'Ingenieria Industrial','4I11',4,'F',91);
execute pa_insert (59,213020019,'Diana', 'Rangel','Ortega', 'Ingenieria Industrial','4I11',4,'F',82);
execute pa_insert (60,213020025,'Veronica', 'Gonzalez','Contreras', 'Ingenieria Industrial','4I11',4,'F',73);
/*-----------------------------------SISTEMAS COMPUTACIONALES---------------------------------------------------*/
execute pa_insert (61,216020029,'Mois�s Enrique', 'Lucero','trevi�o', 'Ingenier�a en Sistemas Computacionales','3S21',3,'B',70);
execute pa_insert (62,216020093,'Jesus Ezequiel', 'Flores','Cruz', 'Ingenier�a en Sistemas Computacionales','5S11',5,'A',75);
execute pa_insert (63,206020058,'Judith Metabel', 'Ramales','Lopez', 'Ingenier�a en Sistemas Computacionales','6S11',6,'A',95);
execute pa_insert (64,186010106,'Orlando', 'Chavero','Mejia', 'Ingenier�a en Sistemas Computacionales','7S11',7,'B',80);
execute pa_insert (65,206010031,'Ariana Montserrat', 'Saavedra','Luis', 'Ingenier�a en Sistemas Computacionales','7S11',7,'B',85);
execute pa_insert (66,196020150,'Jose Leonardo', 'Gonzalez','Valadez', 'Ingenier�a en Sistemas Computacionales','7S11',7,'B',93);
execute pa_insert (67,206010009,'Perla Ivonne', 'Cordoba','Morales', 'Ingenier�a en Sistemas Computacionales','7S11',7,'B',92);
execute pa_insert (68,196020039,'Marcos Aaron', 'Lopez','Garcia', 'Ingenier�a en Sistemas Computacionales','7S11',7,'B',88);
execute pa_insert (69,196020018,'Luis Abraham', 'Lopez','Garcia', 'Ingenier�a en Sistemas Computacionales','7S11',7,'B',90);
execute pa_insert (70,206010017,'Diego', 'Hernandez','Guzman', 'Ingenier�a en Sistemas Computacionales','7S11',7,'B',90);
/*-----------------------------------TICS---------------------------------------------------*/
execute pa_insert (71,207010006,'Angel Gabriel', 'Hernandez','Garcia', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','7T11',7,'L',93);
execute pa_insert (72,207010014,'Pamela', 'Perez','Allala', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','7T11',7,'L',93);
execute pa_insert (73,227020025,'Yocelin', 'Hernandez','Hernandez', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','2T11',2,'L',86);
execute pa_insert (74,227020010,'Beatriz', 'Gonzalez','Gonzalez', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','2T11',2,'L',90);
execute pa_insert (75,227020031,'Iris Jazmin', 'Patricio','Martinez', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','2T11',2,'L',86);
execute pa_insert (76,217020020,'Jorge', 'Avila','Loranca', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','4T11',4,'E',75);
execute pa_insert (77,227020022,'Josu�', 'Manjarez','Zumoza', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','4T11',4,'E',84);
execute pa_insert (78,227020026,'�ngel', 'Garcia','Emily', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','4T11',4,'E',99);
execute pa_insert (79,227020021,'Maira Jocelyn', 'Navarro','Garcia', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','4T11',4,'E',70);
execute pa_insert (80,227020002,'Fernando', 'B�ez','Valencia', 'Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones','8T11',8,'E',90);
/*-----------------------------------CONTADOR PUBLICO---------------------------------------------------*/
execute pa_insert (81,191020117,'Angel','Omez','Evangelista','Contaduria p�blica','8C12',8,'I',80);
execute pa_insert (82,191020051,'Roc�o','Lopez', 'De la Cruz','Contaduria p�blica','8C12',8,'I',80);
execute pa_insert (83,191020082,'Anabelin','Solano','Herrera','Contaduria p�blica','8C12',8,'I',90);
execute pa_insert (84,191020037,'Saray','Galindo','Jimenez','Contaduria p�blica','8C12',8,'I',90);
execute pa_insert (85,213030022,'Fernando','Guzman','Sanchez','Contaduria p�blica','4C11',4,'I',81);
execute pa_insert (86,213020134,'Juan','Miran','Artega','Contaduria p�blica','4C11',4,'I',89);
execute pa_insert (87,213020221,'Estefania','Ruiz','Ocote','Contaduria p�blica','4C11',4,'I',85);
execute pa_insert (88,213020032,'Michelle','Garcia','Hernandez','Contaduria p�blica','2C11',2,'I',83);
execute pa_insert (89,213020082,'Aranza','Romero','Salas','Contaduria p�blica','2C11',2,'I',80);
execute pa_insert (90,213020062,'Fernana','Esionoza','Rodriguez','Contaduria p�blica','2C11',2,'I',88);


create or replace procedure pa_carrera
as
begin
    insert into Gastronomia(Id_G, Matricula_G, Nombre_Del_Alumno_G, Grupo_G, Edificio_G)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Gastronomia';

    insert into E_Renovables(Id_ER, Matricula_ER, Nombre_Del_Alumno_ER, Grupo_ER, Edificio_ER)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Energias Renovables';

    insert into Administracion(Id_A, Matricula_A, Nombre_Del_Alumno_A, Grupo_A, Edificio_A)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Administracion';

    insert into Sis_Automotrices(Id_ISA, Matricula_ISA, Nombre_Del_Alumno_ISA, Grupo_ISA, Edificio_ISA)
    select id, '-' || Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Sistemas Automotrices';

    insert into Ambiental(Id_Am, Matricula_Am, Nombre_Del_Alumno_Am, Grupo_Am, Edificio_Am)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Ingenieria Ambiental';

    insert into Industrial(Id_In, Matricula_In, Nombre_Del_Alumno_In, Grupo_In, Edificio_In)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Ingenieria Industrial';

    insert into Sis_Computacionales(Id_ISC, Matricula_ISC, Nombre_Del_Alumno_ISC, Grupo_ISC, Edificio_ISC)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Ingenier�a en Sistemas Computacionales';

    insert into Contador(Id_CP, Matricula_CP, Nombre_Del_Alumno_CP, Grupo_CP, Edificio_CP)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Contaduria p�blica ';

    insert into TICS(Id_TIC, Matricula_TIC, Nombre_Del_Alumno_TIC, Grupo_TIC, Edificio_TIC)
    select id, Matricula, Nombre || A_Paterno || A_Materno, Grupo, Edificio
    from Alumnos_Tesoem
    where Carrera='Ingenier�a en Tecnologias de la Informaci�n y Comunicaciones';
end; 
  
Execute pa_carrera;
 
select * from gastronomia;
select * from E_Renovables;
select * from Administracion;
select * from Sis_Automotrices;
select * from Ambiental;
select * from Industrial;
select * from sis_computacionales;
select * from contador;
select * from tics;
 
drop table gastronomia;
drop table E_Renovables;
drop table Administracion;
drop table Sis_Automotrices;
drop table Ambiental;
drop table industrial;
drop table sis_computacionales;
drop table contador;
drop table tics;

Create Table Administracion (	
Id_A Number(5) Primary Key, 
Matricula_A Number(15), 
Nombre_Del_Alumno_A Char(55), 
Grupo_A Nvarchar2(10), 
Edificio_A Nvarchar2(10));
 
Create Table Ambiental (	
Id_Am Number(5) Primary Key, 
Matricula_Am Number(15), 
Nombre_Del_Alumno_Am Char(60), 
Grupo_Am Nvarchar2(10), 
Edificio_Am Nvarchar2(10));
 
Create Table Contador (	
Id_CP Number(5) Primary Key, 
Matricula_CP Number(15), 
Nombre_Del_Alumno_CP Char(60), 
Grupo_CP Nvarchar2(10), 
Edificio_CP Nvarchar2(10));
 
Create Table E_Renovables (	
Id_ER Number(5) Primary Key, 
Matricula_ER Number(15), 
Nombre_Del_Alumno_ER Char(60), 
Grupo_ER Nvarchar2(10), 
Edificio_ER Nvarchar2(10));
 
Create Table Gastronomia (	
Id_G Number(5) Primary Key, 
Matricula_G Number(15), 
Nombre_Del_Alumno_G Char(60), 
Grupo_G Nvarchar2(10), 
Edificio_G Nvarchar2(10));
 
Create Table Industrial (	
Id_In Number(5) Primary Key, 
Matricula_In Number(15), 
Nombre_Del_Alumno_In Char(60), 
Grupo_In Nvarchar2(10), 
Edificio_In Nvarchar2(10));
 
Create Table Sis_Automotrices (	
Id_ISA Number(5) Primary Key, 
Matricula_ISA Number(15), 
Nombre_Del_Alumno_ISA Char(60), 
Grupo_ISA Nvarchar2(10), 
Edificio_ISA Nvarchar2(10));
 
Create Table Sis_Computacionales (	
Id_ISC Number(5) Primary Key, 
Matricula_ISC Number(15), 
Nombre_Del_Alumno_ISC Char(60), 
Grupo_ISC Nvarchar2(10), 
Edificio_ISC Nvarchar2(10));
 
Create Table TICS (	
Id_TIC Number(5) Primary Key, 
Matricula_TIC Number(15), 
Nombre_Del_Alumno_TIC Char(60), 
Grupo_TIC Nvarchar2(10), 
Edificio_TIC Nvarchar2(10));
 

select*from E_Renovables join Sis_Automotrices ON Grupo_ER like '2%' and Grupo_ISA like '2%' join Contador on Grupo_CP like '2%' join TICS on Grupo_TIC like '2%';
select*from Sis_Computacionales where Grupo_ISC like '3%';
select*from Administracion join Ambiental on Grupo_A like '4%' and Grupo_Am like '4%' join Industrial on Grupo_In like '4%' join Contador on Grupo_CP like '4%' join TICS on Grupo_TIC like '4%';
select*from Administracion join Sis_Automotrices on Grupo_A like '5%' and Grupo_ISA like '5%' join Sis_Computacionales on Grupo_ISC like '5%';
select*from E_Renovables join Administracion on Grupo_ER like '6%' and Grupo_A like '6%' join Sis_Computacionales on Grupo_ISC like '6%';
select*from E_Renovables join Administracion on Grupo_ER like '7%' and Grupo_A like '7%' join Industrial on Grupo_In like '7%' join Sis_Computacionales on Grupo_ISC like '7%' join TICS on Grupo_TIC like '7%';
select*from Gastronomia join E_Renovables on Grupo_G like '8%' and Grupo_ER like '8%' join Administracion on Grupo_A like '8%' join Contador on Grupo_CP like '8%' join TICS on Grupo_TIC like '8%';


CREATE OR REPLACE PROCEDURE Beca (Alum in char default 'Nombre', A_pa in char default 'Paterno', A_ma in char default 'Materno', Prome in number default 0, Descuento in varchar2 default 'De')
IS
BEGIN
    Insert into cien (Alum, A_pa, A_ma, Prome)
    Select Nombre, A_Paterno, A_Materno,Promedio from Alumnos_Tesoem where Promedio>=95;

    Insert into nove (Alum, A_pa, A_ma, Prome)
    Select Nombre, A_Paterno, A_Materno,Promedio from Alumnos_Tesoem where Promedio<=94 and Promedio>=92;

    Insert into noven (Alum, A_pa, A_ma, Prome)
    Select Nombre, A_Paterno, A_Materno,Promedio from Alumnos_Tesoem where Promedio=91 and Promedio=90;
    
    Insert into oches (Alum, A_pa, A_ma, Prome)
    Select Nombre, A_Paterno, A_Materno,Promedio from Alumnos_Tesoem where Promedio<=89 and Promedio>=87;

    Insert into ochec (Alum, A_pa, A_ma, Prome)
    Select Nombre, A_Paterno, A_Materno,Promedio from Alumnos_Tesoem where Promedio<=86 and Promedio>=84;

    Insert into oche (Alum, A_pa, A_ma, Prome)
    Select Nombre, A_Paterno, A_Materno,Promedio from Alumnos_Tesoem where Promedio<=83 and Promedio>=80;
    
    Insert into sete (Alum, A_pa, A_ma, Prome)
    Select Nombre, A_Paterno, A_Materno,Promedio from Alumnos_Tesoem where Promedio<=79;
END;

execute Beca;

select*from cien;
select*from nove;
select*from noven;
select*from oches;
select*from ochec;
select*from oche;
select*from sete;

create table cien(
Alum char(25),
A_pa char(15),
A_ma char(15),
Prome number(5),
Decuento nvarchar2(20) default '100% de descuento'
);
create table nove(
Alum char(25),
A_pa char(15),
A_ma char(15),
Prome number(5),
Decuento nvarchar2(20) default '75% de descuento'
);
create table noven(
Alum char(25),
A_pa char(15),
A_ma char(15),
Prome number(5),
Decuento nvarchar2(20) default '50% de descuento'
);
create table oches(
Alum char(25),
A_pa char(15),
A_ma char(15),
Prome number(5),
Decuento nvarchar2(20) default '35% de descuento'
);
create table ochec(
Alum char(25),
A_pa char(15),
A_ma char(15),
Prome number(5),
Decuento nvarchar2(20) default '25% de descuento'
);
create table oche(
Alum char(25),
A_pa char(15),
A_ma char(15),
Prome number(5),
Decuento nvarchar2(20) default '10% de descuento'
);
create table sete(
Alum char(25),
A_pa char(15),
A_ma char(15),
Prome number(5),
Decuento nvarchar2(20) default '0% de descuento'
);

create table profesores_tesoem(
Id_prof number (20) primary key not null,
Nombre_prof varchar (20) not null,
A_paterno_prof varchar (20) not null,
A_materno_prof varchar (20) not null,
Carrera_prof varchar (80),
constraint ch_carrera_prof check(carrera_prof in('Ing. Sistemas Computacionales', 'Ing. Tecnologias de la Informaci�n y Comunicaciones',
'Ing. Sistemas Automotrices', 'Lic. Gastronomia', 'Ing. Ambiental', 'Ing. Industrial', 'Ing. Energias Renovables', 'Ing. Contaduria P�blica',
'Lic. Administracion')),
Clase_prof varchar (100),
Grupo_prof nvarchar2 (20));

select*from profesores_tesoem;
drop table profesores_tesoem;

create or replace procedure insert_profe
(pr_id in number default 0, pr_nombre in varchar default 'Nombre', pr_a_paterno in varchar default 'Paterno',
pr_a_materno in varchar default 'Materno', pr_carrera in varchar default  'Carrera',
pr_clase in varchar default 'Clase', pr_grupo in nvarchar2 default 'Grupo')
as
begin
    insert into profesores_tesoem values(pr_id, pr_nombre, pr_a_paterno, pr_a_materno, pr_carrera, pr_clase, pr_grupo);
end;

execute insert_profe (1,'Alberto','Dorado','Mendez','Ing. Industrial','Matem�ticas','2I12');
execute insert_profe (2,'Jose','Flores','Flores','Ing. Industrial' ,'Automatismos 4.0','8I11');
execute insert_profe (3,'Jose','Flores','Flores','Ing. Industrial','Automatismos 4.0','8I12');
execute insert_profe (4,'Jose','Flores','Flores','Ing. Tecnologias de la Informaci�n y Comunicaciones','Aut�mata Programable','6I11');
execute insert_profe (5,'Jose','Flores','Flores','Ing. Tecnologias de la Informaci�n y Comunicaciones','Redes de computadora','7T11');
execute insert_profe (6,'Gustavo Mois�s','Romero','Gonzalez','Ing. Tecnologias de la Informaci�n y Comunicaciones','Sistemas Operativos I','5T11');
execute insert_profe (7,'Gustavo Mois�s','Romero','Gonzalez','Ing. Sistemas Computacionales','Taller de Sistemas Operativos','6S11');
execute insert_profe (8,'Gustavo Mois�s','Romero','Gonzalez','Ing. Sistemas Computacionales','Taller de Sistemas Operativos','6S12');
execute insert_profe (9,'Gustavo Mois�s','Romero','Gonzalez','Ing. Sistemas Computacionales','Taller de Sistemas Operativos','6S21');
execute insert_profe (10,'Gustavo Mois�s','Romero','Gonzalez','Ing. Tecnologias de la Informaci�n y Comunicaciones','Sistemas Operativos II','6T11');
execute insert_profe (11,'Gustavo Mois�s','Romero','Gonzalez','Ing. Tecnologias de la Informaci�n y Comunicaciones','Bases de Datos Distribuidas','7T11');
execute insert_profe (12,'Magaly','Gonzalez','Mota','Ing. Sistemas Computacionales','Ecuaciones Diferenciales','4S11');
execute insert_profe (13,'Magaly','Gonzalez','Mota','Ing. Sistemas Computacionales','Ecuaciones Diferenciales','4S12');
execute insert_profe (14,'Magaly','Gonzalez','Mota','Ing. Sistemas Computacionales','Ecuaciones Diferenciales','4S21');
execute insert_profe (15,'Mayra','Ortiz','Gracida','Ing. Industrial','Estudio del trabajo','4I11');
execute insert_profe (16,'Mayra','Ortiz','Gracida','Ing. Industrial','Estudio del trabajo','4I12');
execute insert_profe (17,'Mayra','Ortiz','Gracida','Ing. Industrial','Estudio del trabajo','4I21');
execute insert_profe (18,'Adriana Arisbel','Ortega','Reyes','Ing. Industrial','C�lculo integral','2I12');
execute insert_profe (19,'Adriana Arisbel','Ortega','Reyes','Ing. Industrial','C�lculo integral','2I11');
execute insert_profe (20,'Adriana Arisbel','Ortega','Reyes ','Ing. Sistemas Automotrices','Ecuaciones Diferenciales','4SA11');
execute insert_profe (21,'Adriana Arisbel','Ortega','Reyes ','Ing. Sistemas Automotrices','�lgebra Lineal ','2SA21');
execute insert_profe (22,'Adriana Arisbel','Ortega','Reyes','Ing. Tecnologias de la Informaci�n y Comunicaciones','�lgebra Lineal','1T11');
execute insert_profe (23,'Camarillo','Cadena','Mendrano','Ing. Ambiental','Calculo integral','3A12');
execute insert_profe (24,'C�sar Alejandro','L�pez','Casta�eda','Ing. Sistemas Computacionales','Ingenieria de Software','6S11');
execute insert_profe (25,'C�sar Alejandro','L�pez','Casta�eda','Ing. Sistemas Computacionales','Ingenieria de Software','6S12');
execute insert_profe (26,'C�sar Alejandro','L�pez','Casta�eda','Ing. Sistemas Computacionales','Programacion L�gica y funcional','8S12');
execute insert_profe (27,'Ariana','Lozada','P�rez','Lic. Administracion','Taller de Administracion','1AD11');
execute insert_profe (28,'Ana Lilia','Mendizabal','Gardu�o','Lic. Administracion','Mercadotecnia','4AD11');
execute insert_profe (29,'Alberto','Dorado','Mendez','Ing. Industrial','Matematicas','2I12');
execute insert_profe (30,'Jose','Flores','Flores','Ing. Industrial','Automatas','8I11');
execute insert_profe (31,'Jose','Flores','Flores','Ing. Industrial','Automatas','8I12');
execute insert_profe (32,'Francisco Raul','Salvador','Ginez','Ing. Sistemas Computacionales','Redes de Computadoras','6S11');
execute insert_profe (33,'Francisco Raul','Salvador','Ginez','Ing. Sistemas Computacionales','Redes de Computadoras','6S12');
execute insert_profe (34,'Fernando','Salgado','Cruz','Lic. Administracion','Taller de Administracion','2AD22');
execute insert_profe (35,'Janett','Garcia','Sanchez','Lic. Administracion','Investigacion','2AD22');
execute insert_profe (36,'Janett','Garcia','Sanchez','Lic. Administracion','Investigacion',' 2AD21');
execute insert_profe (37,'Enrique','Limon','Carrilla','Lic. Administracion','Taller de Investigacion','2AD22');
execute insert_profe (38,'Enrique','Limon','Carrilla','Lic. Administracion','Taller de Investigacion','2AD21');
execute insert_profe (39,'Julio Cesar','Mu�oz','Perez','Ing. Energias Renovables','Algebra Lineal','2E11');
execute Insert_Profe (40,'Daniel','Martinez','Carvajal','Ing. Energias Renovables','Electromagnetismo','2E11');
execute Insert_Profe (41,'Victor','Fuentes','Olivares','Ing. Energias Renovables','Circuitos','4E11');
execute Insert_Profe (44,'Miriam','Mesa','Loyola','Ing. Ambiental','Higiene','5A11');
execute Insert_Profe (45,'Miriam','Mesa','Loyola','Ing. Ambiental','Higiene',' 5A12');
execute Insert_Profe (46,'Jose','Meza','Martinez','Ing. Ambiental','Fundamentos','4A11');
execute Insert_Profe (47,'Jose','Meza','Martinez','Ing. Ambiental','Fundamentos','4A12');
execute Insert_Profe (48,'Jose','Meza','Martinez','Ing. Ambiental','Fundamentos','4A21');
execute Insert_Profe (49,'Mendrano','Cabrera','Carrillo','Ing. Ambiental','Algebra','2A11');
execute Insert_Profe (50,'Mendrano','Cabrera','Carrillo','Ing. Ambiental','Algebra','2A12');
execute Insert_Profe (51,'Pedro Abel','Rojas','Rivera','Ing. Tecnologias de la Informaci�n y Comunicaciones','Estructuras Y Od','3T11');
execute Insert_Profe (52,'Nayely Beatriz','Gonzalez','Contreras','Ing. Tecnologias de la Informaci�n y Comunicaciones','Admin General','3T11');
execute Insert_Profe (53,'Jose Luis','Villareal','Lopez','Ing. Tecnologias de la Informaci�n y Comunicaciones','Electricidad','3T11');
execute Insert_Profe (54,'Adriana','Ortega','Reyes','Ing. Sistemas Automotrices','Calculo','4SA11');
execute Insert_Profe (55,'Benito','Lopez','Razo','Ing. Sistemas Automotrices','Diferencial','5SA11');
execute Insert_Profe (56,'Benito','Lopez','Razo','Ing. Sistemas Automotrices','Diferencial','5SA12');
execute Insert_Profe (57,'Alicia','Mendoza','Gardu�o','Ing. Sistemas Automotrices','Circuitos','5SA12');
execute Insert_Profe (58,'Zharahi','Casta�o','Hernandez','Ing. Contaduria P�blica','Calculo','6C11');
execute Insert_Profe (59,'Omar','Garcia','Jimenez','Ing. Contaduria P�blica','Estadistica','3C12');
execute Insert_Profe (60,'Roberto','Lopez','Castro','Ing. Contaduria P�blica','Tutoria','4C11');
execute Insert_Profe (61,'Esthela','Martinez','Juarez','Lic. Gastronomia','Potabilizacion','6G11');
execute Insert_Profe (62,'Eduardo','Cordba','Aragon','Lic. Gastronomia','Cocina','6G12');
execute Insert_Profe (63,'Victor','Durngo','Morales','Lic. Gastronomia','Evaluacion','6G21');

select distinct Nombre_prof from profesores_tesoem;

create or replace procedure pa_carrera_prof
as
begin
    insert into Prof_Gastronomia(Id_profeGA, Nombre_profeGA, A_paterno_profeGA, A_materno_profeGA, Carrera_profeGA, Clase_profeGA, Grupo_profeGA)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Lic. Gastronomia';

    insert into Prof_E_Renovables(Id_profeER, Nombre_profeER, A_paterno_profeER, A_materno_profeER, Carrera_profeER, Clase_profeER, Grupo_profeER)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Ing. Energias Renovables';

    insert into Prof_Administracion(Id_profeAD, Nombre_profeAD, A_paterno_profeAD, A_materno_profeAD, Carrera_profeAD, Clase_profeAD, Grupo_profeAD)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Lic. Administracion';

    insert into Prof_Sis_Automotrices(Id_profeAU, Nombre_profeAU, A_paterno_profeAU, A_materno_profeAU, Carrera_profeAU, Clase_profeAU, Grupo_profeAU)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Ing. Sistemas Automotrices';

    insert into Prof_Ambiental(Id_profeAM, Nombre_profeAM, A_paterno_profeAM, A_materno_profeAM, Carrera_profeAM, Clase_profeAM, Grupo_profeAM)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Ing. Ambiental';

    insert into Prof_Industrial(Id_profeIN, Nombre_profeIN, A_paterno_profeIN, A_materno_profeIN, Carrera_profeIN, Clase_profeIN, Grupo_profeIN)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Ing. Industrial';

    insert into Prof_Sis_Computacionales(Id_profeCOM, Nombre_profeCOM, A_paterno_profeCOM, A_materno_profeCOM, Carrera_profeCOM, Clase_profeCOM, Grupo_profeCOM)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Ing. Sistemas Computacionales';

    insert into Prof_Contador(Id_profeCO, Nombre_profeCO, A_paterno_profeCO, A_materno_profeCO, Carrera_profeCO, Clase_profeCO, Grupo_profeCO)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Ing. Contaduria P�blica';

    insert into Prof_TICS(Id_profeTI, Nombre_profeTI, A_paterno_profeTI, A_materno_profeTI, Carrera_profeTI, Clase_profeTI, Grupo_profeTI)
    select Id_prof, Nombre_prof, A_paterno_prof, A_materno_prof, Carrera_prof, Clase_prof, Grupo_prof
    from profesores_tesoem
    where Carrera_prof='Ing. Tecnologias de la Informaci�n y Comunicaciones';
end; 
  
Execute pa_carrera_prof;
 
select * from prof_gastronomia;
select * from prof_E_Renovables;
select * from prof_Administracion;
select * from prof_Sis_Automotrices;
select * from prof_Ambiental;
select * from prof_Industrial;
select * from prof_sis_computacionales;
select * from prof_contador;
select * from prof_tics;
 
drop table prof_gastronomia;
drop table prof_E_Renovables;
drop table prof_Administracion;
drop table prof_Sis_Automotrices;
drop table prof_Ambiental;
drop table prof_industrial;
drop table prof_sis_computacionales;
drop table prof_contador;
drop table prof_tics;

Create Table Prof_Administracion (	
Id_profeAD number (20),
Nombre_profeAD varchar (20),
A_paterno_profeAD varchar (20),
A_materno_profeAD varchar (20),
Carrera_profeAD varchar (80),
Clase_profeAD varchar (100),
Grupo_profeAD nvarchar2 (20));

Create Table Prof_Ambiental (	
Id_profeAM number (20),
Nombre_profeAM varchar (20),
A_paterno_profeAM varchar (20),
A_materno_profeAM varchar (20),
Carrera_profeAM varchar (80),
Clase_profeAM varchar (100),
Grupo_profeAM nvarchar2 (20));
 
Create Table Prof_Contador (	
Id_profeCO number (20),
Nombre_profeCO varchar (20),
A_paterno_profeCO varchar (20),
A_materno_profeCO varchar (20),
Carrera_profeCO varchar (80),
Clase_profeCO varchar (100),
Grupo_profeCO nvarchar2 (20));

Create Table Prof_E_Renovables (	
Id_profeER number (20),
Nombre_profeER varchar (20),
A_paterno_profeER varchar (20),
A_materno_profeER varchar (20),
Carrera_profeER varchar (80),
Clase_profeER varchar (100),
Grupo_profeER nvarchar2 (20));

Create Table Prof_Gastronomia (	
Id_profeGA number (20),
Nombre_profeGA varchar (20),
A_paterno_profeGA varchar (20),
A_materno_profeGA varchar (20),
Carrera_profeGA varchar (80),
Clase_profeGA varchar (100),
Grupo_profeGA nvarchar2 (20));

Create Table Prof_Industrial (	
Id_profeIN number (20),
Nombre_profeIN varchar (20),
A_paterno_profeIN varchar (20),
A_materno_profeIN varchar (20),
Carrera_profeIN varchar (80),
Clase_profeIN varchar (100),
Grupo_profeIN nvarchar2 (20));

Create Table Prof_Sis_Automotrices (	
Id_profeAU number (20),
Nombre_profeAU varchar (20),
A_paterno_profeAU varchar (20),
A_materno_profeAU varchar (20),
Carrera_profeAU varchar (80),
Clase_profeAU varchar (100),
Grupo_profeAU nvarchar2 (20));

Create Table Prof_Sis_Computacionales (	
Id_profeCOM number (20),
Nombre_profeCOM varchar (20),
A_paterno_profeCOM varchar (20),
A_materno_profeCOM varchar (20),
Carrera_profeCOM varchar (80),
Clase_profeCOM varchar (100),
Grupo_profeCOM nvarchar2 (20));

Create Table Prof_TICS (	
Id_profeTI number (20),
Nombre_profeTI varchar (20),
A_paterno_profeTI varchar (20),
A_materno_profeTI varchar (20),
Carrera_profeTI varchar (80),
Clase_profeTI varchar (100),
Grupo_profeTI nvarchar2 (20));














