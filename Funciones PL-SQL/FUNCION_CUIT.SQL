create or replace PACKAGE BODY PKG_VALIDACION_CUIT AS 

FUNCTION CUIT_VALIDO (XID VARCHAR2) RETURN NUMBER AS

    RES NUMBER;
    I   NUMBER;
    DIG NUMBER;
    NUM NUMBER;

BEGIN  

    IF LENGTH (XID) != 11 or
       SUBSTR (XID, 1, 2) = '00' THEN
       RETURN 0;
    END IF;    

RES := 0; 
FOR I IN 1 . . 10 loop
    
    NUM := TO_NUMBER(SUBSTR(XID, I, 1));
    IF I = 1 OR I = 7 THEN RES := RES + NUM * 5;
    ELSIF I = 2 OR I = 8 THEN RES := RES + NUM * 4;
    ELSIF I = 3 OR I = 9 THEN RES := RES + NUM * 3;
    ELSIF I = 4 OR I = 10 THEN RES := RES + NUM * 2;
    ELSIF I = 5 THEN RES := RES + NUM * 7;
    ELSIF I = 6 THEN RES := RES + NUM * 6;
    END IF;
    
end loop;

DIG := 11 - MOD (RES, 11);
IF DIG = 11 THEN DIG := 0; END IF;

-- Ahora retornamos valor según validez o no del digito verificador

IF DIG = TO_NUMBER (SUBSTR(XID, 11 , 1 )) THEN
   RETURN 1 ;
ELSE 
   RETURN 0 ; 
END IF;

exception
       
       when others then
       RETURN 0; 
    
    
END;     
END;

/






-- Llamada

declare

valido number;

begin

valido := PKG_VALIDACION_CUIT.cuit_valido ('20322415177');

if valido = 1 then 
   return true;
else
   return false;

end if;

end;




/*DECLARE
p_return number := NULL;

BEGIN

p_return := PKG_VALIDACION_CUIT.cuit_valido (:P81_SUJ_ID_FISCAL);

if p_return = 1 then
return true;
else
return false;
end if;

END;
*/