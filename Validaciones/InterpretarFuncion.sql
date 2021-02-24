

--Busca remito

-- Crea o reemplaza la funcion BUSCA REMITO que recibe un parametro de tipo numero. 
CREATE OR REPLACE FUNCTION REDV12_TEST001.Busca_Remito(p_fac_id NUMBER) RETURN VARCHAR2 IS 
    v_dato VARCHAR2(4000):=''; --se declara una variable 
    CURSOR c IS SELECT DISTINCT P.R_COMPROBAN -- selecciona el campo R_comproban (Se omiten registros duplicados)
                  FROM DET_FAC_VEN df, PENDIENTES p -- tabla detalle factura (DF) y pendientes (P)
                 WHERE df.ID_PENDIENTES = p.ID_PENDIENTES -- Donde el ID de detalle factura sea igual al id pendientes
                   AND df.FAC_ID         = p_fac_id -- y donde el id de las facturas sean iguales
                   AND p.C_TIPO_COMPRO  = 3; -- y el ampo tipo de comprobante sea 3 (de la tabla pendientes)
     BEGIN
           FOR r IN c LOOP --se recorre el cursor 
                v_dato:= NVL(v_dato,' ')|| TO_CHAR(r.r_comproban) ||(' - '); -- Asigna el valor a la variable. lo concatena con el comprobante 
          END LOOP; -- termina el loop
          RETURN(v_dato); -- retorna la variable V_dato
     END;
/


--

CREATE OR REPLACE FUNCTION REDV12_TEST001."CUENTA" (codigo varchar2)-- Se crea la funcion cuenta que recibe un parametro varchar2
return varchar2 is

temp varchar2(50); -- se crea una variable con el nombre temp

BEGIN
  select d_cuenta into temp -- selecciona el campo d_cuenta - se guarda en la variable temp
  from cuentas_contables -- de la tabla cuentas_contables
  where c_cuenta = codigo; -- donde donde la columna C_cuenta sea igual al parametro codigo
  return(temp); -- retorna el valor de la variable temp. 
END;
/

--


