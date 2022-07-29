-- Creación de la base de datos
CREATE DATABASE Prueba3;

USE Prueba3;

-- Creación de las tablas
CREATE TABLE usuarios(userId int PRIMARY KEY IDENTITY(1,1), Login varchar(100), Nombre varchar(100), Paterno varchar(100), Materno varchar(100));

CREATE TABLE empleados(userId int, Sueldo decimal(10,2), FechaIngreso date, FOREIGN KEY(userId) REFERENCES usuarios(userId));

-- Inserción de datos para las tablas (según exceles)
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (1, N'user01', N'BERE', N'NARANJO', N'GONZALEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (2, N'user02', N'ALEXIS', N'CAMPOS', N'NARANJO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (3, N'user03', N'SERGIO ALEJANDRO', N'CAMPOS', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (4, N'user04', N'DIEGO ISMAEL', N'BERUMEN', N'CEDILLO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (5, N'user05', N'AURORA', N'ESCALANTE', N'PALAFOX')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (6, N'user06', N'JOYCELENE FABIOLA', N'ESTRADA', N'BARBA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (7, N'user07', N'FRANCISCO', N'ESTRADA', N'GOMEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (8, N'user08', N'LEONARDO DANIEL', N'FARIAS', N'ROSAS')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (9, N'user09', N'RAMON ANDRES', N'FIERROS', N'ROBLES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (10, N'user10', N'EDGAR ANDRES', N'FLORES', N'OLIVARES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (11, N'user11', N'MARIA FERNANDA', N'FRANCO', N'ESQUIVEL')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (12, N'user12', N'ALEJANDRO', N'GALVAN', N'MUÑIZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (13, N'user13', N'MARTHA ALICIA', N'GUTIERREZ', N'ORTIZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (14, N'user14', N'JOSAFAT GERARDO', N'HERNANDEZ', N'SAUCEDO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (15, N'user15', N'ROSALIA', N'JIMENEZ', N'GONZALEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (16, N'user16', N'LAURA CELENE', N'JIMENEZ', N'RIOS')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (17, N'user17', N'ANGELICA', N'LOPEZ', N'CORTES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (18, N'user18', N'CRISTIAN IVAN', N'LOPEZ', N'GOMEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (19, N'user19', N'MARLENE GABRIELA', N'LOPEZ', N'MEZA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (20, N'user20', N'ALEJANDRA', N'MEDINA', N'IBARRA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (21, N'user21', N'CONSUELO YURIDIANA THALIA', N'MEJIA', N'ALVAREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (22, N'user22', N'JAVIER ADRIAN', N'MEJIA', N'ALVAREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (23, N'user23', N'JUAN CARLOS EVARISTO', N'PEÑA', N'GUTIERREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (24, N'user24', N'JAZMIN ALEJANDRA', N'PEREZ', N'VELEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (25, N'user25', N'GUSTAVO', N'RAMIREZ', N'RIVERA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (26, N'user26', N'CARLOS NIVARDO', N'RODRIGUEZ', N'ASCENCO')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (27, N'user27', N'KARLA JOHANA', N'ROMERO', N'LUEVANOS')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (28, N'user28', N'YESSICA YOSELINNE', N'RUIZ', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (29, N'user29', N'CHRISTIAN EDUARDO', N'SALAS', N'SANCHEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (30, N'user30', N'LUIS ROBERTO', N'SALDAÑA', N'ESPINOZA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (31, N'user31', N'ADRIAN', N'SANCHEZ', N'ORTIZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (32, N'user32', N'EDUARDO YAIR', N'SUAREZ', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (33, N'user33', N'JUAN FRANCISCO', N'TABAREZ', N'GARCIA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (34, N'user34', N'ZULEICA ELIZABETH', N'TERAN', N'TORRES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (35, N'user35', N'ADRIANA YUNUHEN', N'VARGAS', N'AYALA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (36, N'user36', N'OSCAR URIEL', N'VELAZQUEZ', N'ALVAREZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (37, N'user37', N'ERICK DE JESUS', N'CORONA', N'DIAZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (38, N'user38', N'MARIA GUADALUPE', N'RAMOS', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (39, N'user39', N'JESSICA NOEMI', N'JIMENEZ', N'VENTURA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (40, N'user40', N'FLOR MARGARITA', N'ROJAS', N'HERNANDEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (41, N'user41', N'LUIS ANTONIO', N'ALVARADO', N'VALENCIA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (42, N'user42', N'EDGAR IVAN', N'AGUILAR', N'PADILLA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (43, N'user43', N'LUIS ALFONSO', N'MICHEL', N'SANCHEZ')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (44, N'user44', N'JOSE CARLOS', N'SILVA', N'ROCHA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (45, N'user45', N'JUDITH', N'RODRIGUEZ', N'REYES')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (46, N'user46', N'BRENDA SORAYA', N'CHAVEZ', N'GARCIA')
INSERT [dbo].[usuarios] ([userId], [Login], [Nombre], [Paterno], [Materno]) VALUES (47, N'user47', N'ALMA ROSA', N'MARQUEZ', N'AGUILA')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (1, CAST(8837.00 AS Decimal(10, 2)), CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (2, CAST(8837.00 AS Decimal(10, 2)), CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (3, CAST(15000.00 AS Decimal(10, 2)), CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (4, CAST(15000.00 AS Decimal(10, 2)), CAST(N'2000-01-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (5, CAST(7812.00 AS Decimal(10, 2)), CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (6, CAST(7812.00 AS Decimal(10, 2)), CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (7, CAST(10200.00 AS Decimal(10, 2)), CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (8, CAST(10200.00 AS Decimal(10, 2)), CAST(N'2000-01-18' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (9, CAST(13800.00 AS Decimal(10, 2)), CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (10, CAST(13800.00 AS Decimal(10, 2)), CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (11, CAST(18880.00 AS Decimal(10, 2)), CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (12, CAST(18880.00 AS Decimal(10, 2)), CAST(N'2001-05-20' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (13, CAST(8000.00 AS Decimal(10, 2)), CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (14, CAST(8000.00 AS Decimal(10, 2)), CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (15, CAST(6000.00 AS Decimal(10, 2)), CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (16, CAST(19470.00 AS Decimal(10, 2)), CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (17, CAST(19470.00 AS Decimal(10, 2)), CAST(N'2001-07-13' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (18, CAST(10200.00 AS Decimal(10, 2)), CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (19, CAST(10200.00 AS Decimal(10, 2)), CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (20, CAST(25000.00 AS Decimal(10, 2)), CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (21, CAST(7812.00 AS Decimal(10, 2)), CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (22, CAST(7812.00 AS Decimal(10, 2)), CAST(N'2001-07-16' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (23, CAST(12210.00 AS Decimal(10, 2)), CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (24, CAST(12210.00 AS Decimal(10, 2)), CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (25, CAST(7500.00 AS Decimal(10, 2)), CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (26, CAST(15020.00 AS Decimal(10, 2)), CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (27, CAST(15020.00 AS Decimal(10, 2)), CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (28, CAST(25000.00 AS Decimal(10, 2)), CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (29, CAST(7812.00 AS Decimal(10, 2)), CAST(N'2001-11-24' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (30, CAST(15020.00 AS Decimal(10, 2)), CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (31, CAST(15020.00 AS Decimal(10, 2)), CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (32, CAST(12210.00 AS Decimal(10, 2)), CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (33, CAST(12210.00 AS Decimal(10, 2)), CAST(N'2001-12-12' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (34, CAST(19470.00 AS Decimal(10, 2)), CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (35, CAST(19470.00 AS Decimal(10, 2)), CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (36, CAST(8000.00 AS Decimal(10, 2)), CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (37, CAST(8000.00 AS Decimal(10, 2)), CAST(N'2008-08-17' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (38, CAST(18880.00 AS Decimal(10, 2)), CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (39, CAST(18880.00 AS Decimal(10, 2)), CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (40, CAST(14000.00 AS Decimal(10, 2)), CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (41, CAST(13800.00 AS Decimal(10, 2)), CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (42, CAST(13800.00 AS Decimal(10, 2)), CAST(N'2009-06-11' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (43, CAST(15000.00 AS Decimal(10, 2)), CAST(N'2009-10-06' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (44, CAST(15000.00 AS Decimal(10, 2)), CAST(N'2009-10-06' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (45, CAST(13000.00 AS Decimal(10, 2)), CAST(N'2009-10-06' AS Date))
INSERT [dbo].[empleados] ([userId], [Sueldo], [FechaIngreso]) VALUES (46, CAST(8837.00 AS Decimal(10, 2)), CAST(N'2009-10-06' AS Date))
GO


-- Sentencias SQL PRUEBA 1


-- Depurar solo los ID diferentes de 6,7,9 y 10 de la tabla usuarios (5 puntos)
SELECT * FROM usuarios
WHERE userId NOT IN(6,7,9,10);

-- Actualizar el dato Sueldo en un 10 porciento a los empleados que tienen fechas entre el año 2000 y 2001 (5 puntos)
UPDATE empleados
SET Sueldo = Sueldo * 1.1
WHERE FechaIngreso BETWEEN '2000-01-01' AND '2001-12-31';

-- Realiza una consulta para traer el nombre de usuario y fecha de ingreso de los usuarios que gananen mas de 10000 y su apellido comience con T ordernado del mas reciente al mas antiguo (10 puntos)
SELECT Login, FechaIngreso
FROM usuarios
INNER JOIN empleados ON usuarios.userId = empleados.userId
WHERE Sueldo > 10000
AND Paterno LIKE 'T%'
ORDER BY FechaIngreso DESC

-- Realiza una consulta donde agrupes a los empleados por sueldo, un grupo con los que ganan menos de 1200 y uno mayor o igual a 1200, cuantos hay en cada grupo? (10 puntos)
SELECT (SELECT COUNT(userId) FROM empleados WHERE Sueldo < 1200) AS Menos_1200, (SELECT COUNT(userId) FROM empleados WHERE Sueldo >= 1200) AS MayorIgual_1200