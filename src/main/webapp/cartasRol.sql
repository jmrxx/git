
-- Borrar base de datos si existe
	-- drop database if exists cartasRol;

-- Creacion de la base de datos de las cartas de rol
	create database cartasRol character set utf8mb4 collate utf8mb4_spanish_ci;

-- Usar la base de datos
	use cartasRol;

-- Tabla donde se guardaran las cartas
	create table cartas (
		id      	int         	primary key auto_increment,
		NOM_carta	varchar(100)	not null,
		PIC_carta	varchar(100)	not null,
		RACE_carta	int				not null,
		FUE_carta	int				not null,
		DES_carta	int				not null,
		CON_carta	int				not null,
		INT_carta	int				not null,
		SAB_carta	int				not null,
		CAR_carta	int				not null,
		PV_carta	int				not null,
		PM_carta	int				not null
		 
	);
select * from cartas;