
-----------------Crea la tabla de contrato
CREATE TABLE CONTRATO1 (
ID INTEGER NOT NULL,
FECHAINICIO DATE NOT NULL,
FECHAFIN DATE NOT NULL,  CHECK (FECHAFIN>FECHAINICIO),
TIPO VARCHAR(30) NOT NULL,
ESTADO VARCHAR(30) NOT NULL,
COSTO DECIMAL NOT NULL,
ID_CLIENTE VARCHAR(30) NOT NULL,
ID_VIVIENDA INTEGER,
ID_HABITACION INTEGER,
NUMEROPERSONAS INTEGER,
FECHACREACION VARCHAR(30) NOT NULL,
PRIMARY KEY (ID)
);

ALTER TABLE CONTRATO1
ADD CONSTRAINT FK_ID_CLIENTE1
FOREIGN KEY(ID_CLIENTE)
REFERENCES USUARIO(DOCUMENTO);

ALTER TABLE CONTRATO1
ADD CONSTRAINT FK_ID_VIVIENDA3
FOREIGN KEY(ID_VIVIENDA)
REFERENCES VIVIENDA(ID);

ALTER TABLE CONTRATO1
ADD CONSTRAINT FK_ID_HABITACION3
FOREIGN KEY(ID_HABITACION)
REFERENCES HABITACION(ID);





