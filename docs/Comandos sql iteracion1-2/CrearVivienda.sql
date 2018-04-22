CREATE TABLE VIVIENDA
(
ID INTEGER NOT NULL, 
CAPACIDAD INTEGER NOT NULL,
TIPO VARCHAR(30) NOT NULL,
DIRECCION VARCHAR(30) NOT NULL,
NUMEROHABITANTES INTEGER NOT NULL, 
COSTO DECIMAL NOT NULL,
ID_PERSONA VARCHAR(30),
ID_SEGURO INTEGER,
PRIMARY KEY (ID));
------------------Constraint unique direccion 
ALTER TABLE Vivienda 
ADD CONSTRAINT UNIQUE_DIRECCION
UNIQUE(direccion);

ALTER TABLE VIVIENDA
ADD CONSTRAINT UNIQUE_PERSONA
UNIQUE(ID_PERSONA);

ALTER TABLE VIVIENDA 
ADD CONSTRAINT UNIQUE_SEGURO
UNIQUE(ID_SEGURO);

ALTER TABLE VIVIENDA
ADD CONSTRAINT FK_ID_PERSONA1
FOREIGN KEY(ID_PERSONA)
REFERENCES PERSONANATURAL(DOCUMENTO);

ALTER TABLE VIVIENDA
ADD CONSTRAINT FK_ID_SEGURO
FOREIGN KEY(ID_SEGURO)
REFERENCES SEGURO(ID);