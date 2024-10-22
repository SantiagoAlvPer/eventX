
  CREATE TABLE "SYSTEM"."USUARIOS" 
   (	"USER_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDOS" VARCHAR2(100 BYTE), 
	"FECHA_NACIMIENTO" DATE, 
	"EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"TELEFONO" VARCHAR2(20 BYTE), 
	"PASS" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"TIPO" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	 PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."EMPRESA" 
   (	"EMPRESA_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"USER_ID" NUMBER, 
	"NOMBRE_LEGAL" VARCHAR2(100 BYTE), 
	"NIT" VARCHAR2(20 BYTE), 
	"DIRECCION_LEGAL" VARCHAR2(200 BYTE), 
	"TELEFONO_EMPRESA" VARCHAR2(20 BYTE), 
	"EMAIL_EMPRESA" VARCHAR2(100 BYTE), 
	"PAGINA_WEB" VARCHAR2(100 BYTE), 
	"ACTIVIDAD_ECONOMICA" VARCHAR2(200 BYTE), 
	"FECHA_CREACION" DATE, 
	"DESCRIPCION_PRODUCTOS" VARCHAR2(500 BYTE), 
	"MERCADOS_OBJETIVO" VARCHAR2(200 BYTE), 
	"INTERESES_APLICACION" VARCHAR2(200 BYTE), 
	 PRIMARY KEY ("EMPRESA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_USUARIO" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."USUARIOS" ("USER_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."SOLICITUDES_EVENTO" 
   (	"SOLICITUD_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"FECHA_INICIO" DATE, 
	"FECHA_FIN" DATE, 
	"DESCRIPCION" VARCHAR2(1000 BYTE) NOT NULL ENABLE, 
	"EMPRESA_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"ESTADO" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	 PRIMARY KEY ("SOLICITUD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_EMPRESA" FOREIGN KEY ("EMPRESA_ID")
	  REFERENCES "SYSTEM"."EMPRESA" ("EMPRESA_ID") ENABLE, 
	 CONSTRAINT "FK_USUARIO_SOLICITUDES" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."USUARIOS" ("USER_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."PROPUESTA" 
   (	"PROPUESTA_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"FECHA_INICIO" DATE, 
	"FECHA_FIN" DATE, 
	"DESCRIPCION" VARCHAR2(1000 BYTE), 
	"ESTADO" VARCHAR2(50 BYTE), 
	"SOLICITUD_ID" NUMBER, 
	"EMPRESA_ID" NUMBER, 
	 PRIMARY KEY ("PROPUESTA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_SOLICITUD" FOREIGN KEY ("SOLICITUD_ID")
	  REFERENCES "SYSTEM"."SOLICITUDES_EVENTO" ("SOLICITUD_ID") ENABLE, 
	 CONSTRAINT "FK_EMPRESA_PROPUESTA" FOREIGN KEY ("EMPRESA_ID")
	  REFERENCES "SYSTEM"."EMPRESA" ("EMPRESA_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."SERVICIOS" 
   (	"SERVICIO_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"DESCRIPCION" VARCHAR2(500 BYTE), 
	 PRIMARY KEY ("SERVICIO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."EMPRESA_SERVICIOS" 
   (	"EMPRESA_SERVICIO_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"EMPRESA_ID" NUMBER, 
	"SERVICIO_ID" NUMBER, 
	"PRECIO_BASE" NUMBER, 
	"DESCRIPCION" VARCHAR2(1000 BYTE), 
	 PRIMARY KEY ("EMPRESA_SERVICIO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_EMPRESA_SERVICIOS" FOREIGN KEY ("EMPRESA_ID")
	  REFERENCES "SYSTEM"."EMPRESA" ("EMPRESA_ID") ENABLE, 
	 CONSTRAINT "FK_SERVICIO" FOREIGN KEY ("SERVICIO_ID")
	  REFERENCES "SYSTEM"."SERVICIOS" ("SERVICIO_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."EMPRESA_SOLICITUDES" (	
    "SOLICITUD_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"EMPRESA_SOLICITANTE_ID" NUMBER, 
	"EMPRESA_SERVICIO_ID" NUMBER, 
	"FECHA_INICIO" DATE, 
	"FECHA_FIN" DATE, 
	"ESTADO" VARCHAR2(50 BYTE), 
	 PRIMARY KEY ("SOLICITUD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_EMPRESA_SOLICITANTE" FOREIGN KEY ("EMPRESA_SOLICITANTE_ID")
	  REFERENCES "SYSTEM"."EMPRESA" ("EMPRESA_ID") ENABLE, 
	 CONSTRAINT "FK_EMPRESA_SERVICIO" FOREIGN KEY ("EMPRESA_SERVICIO_ID")
	  REFERENCES "SYSTEM"."EMPRESA_SERVICIOS" ("EMPRESA_SERVICIO_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."PROPUESTAS_EMPRESA_SOLICITUDES" (	
    "PROPUESTA_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"EMPRESA_SOLICITUD_ID" NUMBER, 
	"FECHA_INICIO" DATE, 
	"FECHA_FIN" DATE, 
	"DESCRIPCION" VARCHAR2(500 BYTE), 
	"ESTADO" VARCHAR2(50 BYTE), 
	"EMPRESA_ID" NUMBER, 
	 PRIMARY KEY ("PROPUESTA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_EMPRESA_SOLICITUD" FOREIGN KEY ("EMPRESA_SOLICITUD_ID")
	  REFERENCES "SYSTEM"."EMPRESA_SOLICITUDES" ("SOLICITUD_ID") ENABLE, 
	 CONSTRAINT "FK_EMPRESA_CREADORA_PROPUESTA" FOREIGN KEY ("EMPRESA_ID")
	  REFERENCES "SYSTEM"."EMPRESA" ("EMPRESA_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


  CREATE TABLE "SYSTEM"."EVENTO" 
   (	"EVENTO_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"TIPO" VARCHAR2(100 BYTE), 
	"DESCRIPCION" VARCHAR2(500 BYTE), 
	"DIRECCION" VARCHAR2(200 BYTE), 
	"CUPOS_MAXIMOS" NUMBER, 
	"PRECIO_ENTRADA" NUMBER, 
	"FECHA" DATE, 
	"HORA" TIMESTAMP (6), 
	"EMPRESA_ID" NUMBER, 
	"SOLICITUD_ID" NUMBER, 
	"SERVICIOS_ID" NUMBER, 
	"DURACION" INTERVAL DAY (2) TO SECOND (6), 
	"CONTACTO" VARCHAR2(100 BYTE), 
	"ESTADO" VARCHAR2(50 BYTE), 
	"NOTAS_ADICIONALES" VARCHAR2(1000 BYTE), 
	"ASISTENTES_ACTUALES" NUMBER, 
	"REQUISITOS_ESPECIALES" VARCHAR2(500 BYTE), 
	 PRIMARY KEY ("EVENTO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_EMPRESA_GESTION" FOREIGN KEY ("EMPRESA_ID")
	  REFERENCES "SYSTEM"."EMPRESA" ("EMPRESA_ID") ENABLE, 
	 CONSTRAINT "FK_SOLICITUD_PRECEDENTE" FOREIGN KEY ("SOLICITUD_ID")
	  REFERENCES "SYSTEM"."SOLICITUDES_EVENTO" ("SOLICITUD_ID") ENABLE, 
	 CONSTRAINT "FK_SERVICIOS_NECESITADOS" FOREIGN KEY ("SERVICIOS_ID")
	  REFERENCES "SYSTEM"."SERVICIOS" ("SERVICIO_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  
  
  
  
  INSERT INTO USUARIOS (NOMBRE, APELLIDOS, FECHA_NACIMIENTO, EMAIL, TELEFONO, PASS, TIPO)
VALUES ('Juan', 'P�rez', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'juan.perez@example.com', '555-1234', 'password1', 'admin');

INSERT INTO USUARIOS (NOMBRE, APELLIDOS, FECHA_NACIMIENTO, EMAIL, TELEFONO, PASS, TIPO)
VALUES ('Ana', 'Garc�a', TO_DATE('1990-08-25', 'YYYY-MM-DD'), 'ana.garcia@example.com', '555-5678', 'password2', 'user');

INSERT INTO USUARIOS (NOMBRE, APELLIDOS, FECHA_NACIMIENTO, EMAIL, TELEFONO, PASS, TIPO)
VALUES ('Carlos', 'Mart�nez', TO_DATE('1975-12-10', 'YYYY-MM-DD'), 'carlos.martinez@example.com', '555-9876', 'password3', 'user');




INSERT INTO EMPRESA (USER_ID, NOMBRE_LEGAL, NIT, DIRECCION_LEGAL, TELEFONO_EMPRESA, EMAIL_EMPRESA, PAGINA_WEB, ACTIVIDAD_ECONOMICA, FECHA_CREACION, DESCRIPCION_PRODUCTOS, MERCADOS_OBJETIVO, INTERESES_APLICACION)
VALUES (61, 'Empresa A', '123456789', 'Calle Falsa 123', '555-0001', 'contacto@empresaA.com', 'www.empresaA.com', 'Tecnolog�a', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Desarrollo de software', 'Global', 'Innovaci�n');

INSERT INTO EMPRESA (USER_ID, NOMBRE_LEGAL, NIT, DIRECCION_LEGAL, TELEFONO_EMPRESA, EMAIL_EMPRESA, PAGINA_WEB, ACTIVIDAD_ECONOMICA, FECHA_CREACION, DESCRIPCION_PRODUCTOS, MERCADOS_OBJETIVO, INTERESES_APLICACION)
VALUES (62, 'Empresa B', '987654321', 'Avenida Siempre Viva 742', '555-0002', 'contacto@empresaB.com', 'www.empresaB.com', 'Consultor�a', TO_DATE('2010-05-15', 'YYYY-MM-DD'), 'Consultor�a en negocios', 'Nacional', 'Crecimiento');

INSERT INTO EMPRESA (USER_ID, NOMBRE_LEGAL, NIT, DIRECCION_LEGAL, TELEFONO_EMPRESA, EMAIL_EMPRESA, PAGINA_WEB, ACTIVIDAD_ECONOMICA, FECHA_CREACION, DESCRIPCION_PRODUCTOS, MERCADOS_OBJETIVO, INTERESES_APLICACION)
VALUES (63, 'Empresa C', '456789123', 'Boulevard de los Sue�os Rotos 456', '555-0003', 'contacto@empresaC.com', 'www.empresaC.com', 'Marketing', TO_DATE('2015-08-30', 'YYYY-MM-DD'), 'Marketing digital', 'Local', 'Creatividad');



INSERT INTO SOLICITUDES_EVENTO (FECHA_INICIO, FECHA_FIN, DESCRIPCION, EMPRESA_ID, USER_ID, ESTADO)
VALUES (TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'Evento de lanzamiento de producto', 1, 61, 'Pendiente');

INSERT INTO SOLICITUDES_EVENTO (FECHA_INICIO, FECHA_FIN, DESCRIPCION, EMPRESA_ID, USER_ID, ESTADO)
VALUES (TO_DATE('2024-07-10', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'Conferencia anual de marketing', 22, 62, 'Aprobada');

INSERT INTO SOLICITUDES_EVENTO (FECHA_INICIO, FECHA_FIN, DESCRIPCION, EMPRESA_ID, USER_ID, ESTADO)
VALUES (TO_DATE('2024-09-20', 'YYYY-MM-DD'), TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'Taller de innovaci�n tecnol�gica', 23, 63, 'Rechazada');



INSERT INTO PROPUESTA (FECHA_INICIO, FECHA_FIN, DESCRIPCION, ESTADO, SOLICITUD_ID, EMPRESA_ID)
VALUES (TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'Propuesta para evento de lanzamiento', 'En revisi�n', 1, 21);

INSERT INTO PROPUESTA (FECHA_INICIO, FECHA_FIN, DESCRIPCION, ESTADO, SOLICITUD_ID, EMPRESA_ID)
VALUES (TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'Propuesta para conferencia de marketing', 'Aceptada', 4, 22);

INSERT INTO PROPUESTA (FECHA_INICIO, FECHA_FIN, DESCRIPCION, ESTADO, SOLICITUD_ID, EMPRESA_ID)
VALUES (TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2024-08-05', 'YYYY-MM-DD'), 'Propuesta para taller de innovaci�n', 'Rechazada', 5, 23);



INSERT INTO SERVICIOS (NOMBRE, DESCRIPCION)
VALUES ('Desarrollo de Software', 'Servicios de desarrollo y mantenimiento de software.');

INSERT INTO SERVICIOS (NOMBRE, DESCRIPCION)
VALUES ('Consultor�a Empresarial', 'Consultor�a para optimizaci�n de procesos y estrategias empresariales.');

INSERT INTO SERVICIOS (NOMBRE, DESCRIPCION)
VALUES ('Marketing Digital', 'Servicios de marketing digital y gesti�n de redes sociales.');




INSERT INTO EMPRESA_SERVICIOS (EMPRESA_ID, SERVICIO_ID, PRECIO_BASE, DESCRIPCION)
VALUES (21, 1, 5000, 'Desarrollo de software a medida.');

INSERT INTO EMPRESA_SERVICIOS (EMPRESA_ID, SERVICIO_ID, PRECIO_BASE, DESCRIPCION)
VALUES (22, 2, 3000, 'Consultor�a empresarial para peque�as y medianas empresas.');

INSERT INTO EMPRESA_SERVICIOS (EMPRESA_ID, SERVICIO_ID, PRECIO_BASE, DESCRIPCION)
VALUES (23, 3, 2000, 'Marketing digital para productos de consumo masivo.');




INSERT INTO EMPRESA_SOLICITUDES (EMPRESA_SOLICITANTE_ID, EMPRESA_SERVICIO_ID, FECHA_INICIO, FECHA_FIN, ESTADO)
VALUES (1, 1, TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Pendiente');

INSERT INTO EMPRESA_SOLICITUDES (EMPRESA_SOLICITANTE_ID, EMPRESA_SERVICIO_ID, FECHA_INICIO, FECHA_FIN, ESTADO)
VALUES (1, 2, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Aprobada');

INSERT INTO EMPRESA_SOLICITUDES (EMPRESA_SOLICITANTE_ID, EMPRESA_SERVICIO_ID, FECHA_INICIO, FECHA_FIN, ESTADO)
VALUES (1, 3, TO_DATE('2024-07-20', 'YYYY-MM-DD'), TO_DATE('2024-07-25', 'YYYY-MM-DD'), 'Rechazada');





INSERT INTO PROPUESTAS_EMPRESA_SOLICITUDES (EMPRESA_SOLICITUD_ID, FECHA_INICIO, FECHA_FIN, DESCRIPCION, ESTADO, EMPRESA_ID)
VALUES (4, TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2024-04-20', 'YYYY-MM-DD'), 'Propuesta para servicio de desarrollo de software', 'En revisi�n', 21);

INSERT INTO PROPUESTAS_EMPRESA_SOLICITUDES (EMPRESA_SOLICITUD_ID, FECHA_INICIO, FECHA_FIN, DESCRIPCION, ESTADO, EMPRESA_ID)
VALUES (5, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'Propuesta para servicio de consultor�a empresarial', 'Aceptada', 22);

INSERT INTO PROPUESTAS_EMPRESA_SOLICITUDES (EMPRESA_SOLICITUD_ID, FECHA_INICIO, FECHA_FIN, DESCRIPCION, ESTADO, EMPRESA_ID)
VALUES (6, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'Propuesta para servicio de marketing digital', 'Rechazada', 23);




INSERT INTO "SYSTEM"."EVENTO" 
   (TIPO, DESCRIPCION, DIRECCION, CUPOS_MAXIMOS, PRECIO_ENTRADA, FECHA, HORA, EMPRESA_ID, SOLICITUD_ID, SERVICIOS_ID, DURACION, CONTACTO, ESTADO, NOTAS_ADICIONALES, ASISTENTES_ACTUALES, REQUISITOS_ESPECIALES)
VALUES 
   ('Conferencia', 'Conferencia anual sobre innovaci�n tecnol�gica', 'Calle Falsa 123, Ciudad Tech', 200, 50, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-06-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, INTERVAL '2' DAY, 'juan.perez@example.com', 'Pendiente', 'Traer identificaci�n oficial', 50, 'Acceso para personas con discapacidad');

INSERT INTO "SYSTEM"."EVENTO" 
   (TIPO, DESCRIPCION, DIRECCION, CUPOS_MAXIMOS, PRECIO_ENTRADA, FECHA, HORA, EMPRESA_ID, SOLICITUD_ID, SERVICIOS_ID, DURACION, CONTACTO, ESTADO, NOTAS_ADICIONALES, ASISTENTES_ACTUALES, REQUISITOS_ESPECIALES)
VALUES 
   ('Workshop', 'Taller pr�ctico de marketing digital', 'Avenida Siempre Viva 742, Ciudad Marketing', 100, 30, TO_DATE('2024-07-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-07-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 22, 4, 2, INTERVAL '1' DAY, 'ana.garcia@example.com', 'Confirmado', 'Materiales incluidos', 80, 'Traer laptop personal');

INSERT INTO "SYSTEM"."EVENTO" 
   (TIPO, DESCRIPCION, DIRECCION, CUPOS_MAXIMOS, PRECIO_ENTRADA, FECHA, HORA, EMPRESA_ID, SOLICITUD_ID, SERVICIOS_ID, DURACION, CONTACTO, ESTADO, NOTAS_ADICIONALES, ASISTENTES_ACTUALES, REQUISITOS_ESPECIALES)
VALUES 
   ('Seminario', 'Seminario de desarrollo de software �gil', 'Boulevard de los Sue�os Rotos 456, Ciudad Dev', 150, 40, TO_DATE('2024-08-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-08-20 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 23, 5, 3, INTERVAL '3' DAY, 'carlos.martinez@example.com', 'Completo', 'Certificado de asistencia al final', 150, 'Requisitos previos: Conocimiento b�sico en programaci�n');

