--@Autor(es):       Gutiérrez Castillo Oscar, Valderrama Navarro Armando
--@Fecha creación:  01/12/2018
--@Descripción:     <breve descripción del contenido y propósito del archivo>

--Se cosideran dos reglas nuevas:
  --Queremos saber las especialidades de los profesores de carreras
  --Queremos saber el puesto de todos los profesores administradores


CREATE GLOBAL TEMPORARY TABLE ESPECIALIDAD_PROFESOR(
  GRADO_ESTUDIO VARCHAR2(2)   NOT NULL,
  NOMBRE        VARCHAR2(50)  NOT NULL,
  AP_PATERNO    VARCHAR2(50)  NOT NULL,
  AP_MATERNO    VARCHAR2(50)  NULL,
  ESPECIALIDAD  VARCHAR2(2)   NOT NULL,
  DESCRIPCION   VARCHAR2(150) NOT NULL
) ON COMMIT PRESERVE ROWS;

INSERT INTO ESPECIALIDAD_PROFESOR (GRADO_ESTUDIO,
  NOMBRE,AP_PATERNO,AP_MATERNO,ESPECIALIDAD,DESCRIPCION)
SELECT GE.CLAVE, P.NOMBRE, P.AP_PATERNO, P.AP_MATERNO,
  q1.ESPECIALIDAD, q1.DESCRIPCION_ESPECIALIDAD
FROM PROFESOR P
JOIN GRADO_ESTUDIOS GE
ON GE.GRADO_ESTUDIOS_ID = P.GRADO_ESTUDIOS_ID
JOIN PROFESOR_CARRERA PC
ON PC.PROFESOR_ID = P.PROFESOR_ID
JOIN (
  SELECT E.PROFESOR_CARRERA_ID,GE.CLAVE AS ESPECIALIDAD,
    E.DESCRIPCION AS DESCRIPCION_ESPECIALIDAD
  FROM ESPECIALIDAD E
  JOIN GRADO_ESTUDIOS GE
  ON GE.GRADO_ESTUDIOS_ID = E.GRADO_ESTUDIOS_ID
) q1
ON q1.PROFESOR_CARRERA_ID = PC.PROFESOR_ID;


CREATE  GLOBAL TEMPORARY TABLE PUESTO_PROFESOR(
  GRADO_ESTUDIO VARCHAR2(2)     NOT NULL,
  NOMBRE        VARCHAR2(50)    NOT NULL,
  AP_PATERNO    VARCHAR2(50)    NOT NULL,
  AP_MATERNO    VARCHAR2(50)    NULL, 
  NOMBRE_PUESTO   VARCHAR2(50)  NOT NULL,
  SARLIO_MENSUAL  NUMBER (10,2) NOT NULL
) ON COMMIT PRESERVE ROWS;


INSERT INTO PUESTO_PROFESOR(GRADO_ESTUDIO,NOMBRE,
  AP_PATERNO,AP_MATERNO,NOMBRE_PUESTO,SARLIO_MENSUAL)
SELECT GE.CLAVE, P.NOMBRE, P.AP_PATERNO, P.AP_MATERNO,
  PU.NOMBRE_PUESTO, PU.SALARIO_MENSUAL
FROM PROFESOR P
JOIN GRADO_ESTUDIOS GE
ON GE.GRADO_ESTUDIOS_ID = P.GRADO_ESTUDIOS_ID
JOIN PROFESOR_ADMINISTRADOR PA
ON PA.PROFESOR_ID = P.PROFESOR_ID
JOIN PUESTO PU
ON PU.PUESTO_ID = PA.PUESTO_ID;


