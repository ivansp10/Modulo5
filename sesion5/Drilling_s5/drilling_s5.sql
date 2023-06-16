CREATE TABLE pelicula(
	id NUMERIC(100) PRIMARY KEY,
	pelicula VARCHAR(100) NOT NULL,
	estreno NUMERIC(100) NOT NULL,
	director VARCHAR(100) NOT NULL
	
);
CREATE TABLE reparto(
	id_pelicula NUMERIC(100) PRIMARY KEY,
	actor VARCHAR(100) NOT NULL
);

COPY pelicula FROM 'D:\Archivos\bootcamp\clasesmodulo5\sesion5\Drilling_s5\ApoyoCSV\peliculas.csv'
WITH CSV;
COPY reparto FROM 'D:\Archivos\bootcamp\clasesmodulo5\sesion5\Drilling_s5\ApoyoCSV\reparto.csv'
WITH CSV;
