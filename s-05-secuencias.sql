--@Autor(es):       Gutiérrez Castillo Oscar, Valderrama Navarro Armando
--@Fecha creación:  01/12/2018
--@Descripción:     Creacion de secuencias


-- SEQUENCE: CARRERA_SEQ 
CREATE SEQUENCE CARRERA_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: PLAN_ESTUDIOS_SEQ 
CREATE SEQUENCE PLAN_ESTUDIOS_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: ASIGNATURA_SEQ 
CREATE SEQUENCE ASIGNATURA_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: HORARIO_SEQ 
CREATE SEQUENCE HORARIO_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: SEMESTRE_SEQ 
CREATE SEQUENCE SEMESTRE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE 
    NOMAXVALUE 
    CACHE 20
    ORDER
;

-- SEQUENCE: SEMESTRE_PERIODO_SEQ 
CREATE SEQUENCE SEMESTRE_PERIODO_SEQ
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 3
    CACHE 20
    ORDER
;


-- SEQUENCE: PROFESOR_SEQ 
CREATE SEQUENCE PROFESOR_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: ESTUDIANTE_SEQ 
CREATE SEQUENCE ESTUDIANTE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: CURSO_SEQ 
CREATE SEQUENCE CURSO_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: ESTUDIANTE_INSCRITO_SEQ 
CREATE SEQUENCE ESTUDIANTE_INSCRITO_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: ESPECIALIDAD_SEQ 
CREATE SEQUENCE ESPECIALIDAD_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: TESIS_SEQ 
CREATE SEQUENCE TESIS_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: TESIS_HIS_SEQ 
CREATE SEQUENCE TESIS_HIS_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: PLAN_ESTUDIOS_CARRERA_SEQ 
CREATE SEQUENCE PLAN_ESTUDIOS_CARRERA_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: CARRERA_ASIGNATURA_SEQ 
CREATE SEQUENCE CARRERA_ASIGNATURA_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: CURSO_HORARIO_SEQ 
CREATE SEQUENCE CURSO_HORARIO_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: CURSO_SEMESTRE_SEQ 
CREATE SEQUENCE CURSO_SEMESTRE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;

-- SEQUENCE: TESIS_SINODAL_SEQ 
CREATE SEQUENCE TESIS_SINODAL_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    CACHE 20
    ORDER
;
