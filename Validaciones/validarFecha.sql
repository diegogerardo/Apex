--PAQUETE: 
--CAMPO: MCO_Fecha
--Tabla: MONEDAS_COTIZACIONES
--FUNCION: f_valida_otras_cotizaciones

begin
  if p_mco_fecha > sysdate then
     return FALSE;
  else
      return true;
  end if;

end;


if  p_mco_fecha > sysdate then
       --   p_msg_return := 'No puedes poner una fecha mayor a la actual.';
       --   return FALSE;
       --   end if;

       if to_char(p_mco_fecha,'dd/mm/yyyy') > to_char(sysdate,'dd/mm/yyyy') then
          p_msg_return := 'No puedes poner una fecha mayor a la actual.';
          return FALSE;
          end if; 



            if p_mco_fecha > sysdate then
           p_msg_return := 'La fecha no puede ser mayor a la actual.';
           return false;
           end if;






           DECLARE
   p_return            boolean         := null;
   p_prc_name          varchar2(100)   := 'f_valida_centros_costos: ';
   p_msg_return        varchar2(4000)  := NULL;
   
   e_error             exception;
      
BEGIN
    
    p_return := pkg_validaciones_maestros_generales.f_valida_centros_costos( :cec_nombre, p_msg_return );
   
    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;






DECLARE
   p_return            boolean         := null;
   p_prc_name          varchar2(100)   := 'f_valida_sujetos_fechas: ';
   p_msg_return        varchar2(4000)  := NULL;
   
   e_error             exception;
      
BEGIN
    
    p_return := PKG_VALIDACIONES_MAESTROS_SUJETOS.f_valida_sujetos_fechas( :p85_SUJ_FECHA_NACIMIENTO, p_msg_return );
   
    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;








 
ON f_valida_asignacion_sectores             ( p_PSE_SEC_ID                 PERSONALES_SECTORES.PSE_SEC_ID%type                                 
                                            ,p_PSE_FECHA_DESDE            PERSONALES_SECTORES.PSE_FECHA_DESDE%type
                                            ,p_PSE_FECHA_HASTA            PERSONALES_SECTORES.PSE_FECHA_HASTA%type
                                            ,p_msg_return                 IN OUT varchar2
                                            ) RETURN boolean IS
                                          
       v_procedimiento   varchar2(4000) := v_package || 'f_valida_asignacion_sectores: ';
      
        e_error           exception;

   BEGIN

        BEGIN
                      
           if p_PSE_SEC_ID  is NULL then
              p_msg_return := 'El campo "Sector - C. de Costo" no puede estar vacío.';
              return FALSE;
           end if;
           
           
           
           if p_PSE_FECHA_DESDE is NULL then
              p_msg_return := 'El campo "Fecha Desde" no puede estar vacío.';
              return FALSE;
           end if;
           
          if to_char(p_PSE_FECHA_DESDE,'dd/mm/yyyy') > to_char(sysdate,'dd/mm/yyyy') then
          p_msg_return := 'El campo "Fecha Desde" no puede ser mayor a la fecha actual.'; 
          return FALSE;
          end if; 
           
           
          if p_PSE_FECHA_HASTA is NULL then
          p_msg_return := 'El campo "Fecha Hasta" no puede estar vacío.';
          return FALSE;
          end if;
           
          /* 
          if to_char(p_PSE_FECHA_HASTA,'dd/mm/yyyy') < to_char(sysdate,'dd/mm/yyyy') then
          p_msg_return := 'El campo "Fecha Hasta" no puede ser menor a la fecha actual.';
          return FALSE;
          end if;            
            */     
          
          if to_char(p_PSE_FECHA_HASTA,'dd/mm/yyyy') < to_char(p_PSE_FECHA_DESDE,'dd/mm/yyyy') then
          p_msg_return := 'El campo "Fecha Hasta" no puede ser menor a la "Fecha Desde".';
          return FALSE;
          end if;    
        
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_asignacion_sectores;                   



--  Fin Función valida Asignación Sectores (Pag 88)