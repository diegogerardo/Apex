-----SPEC------
create or replace PACKAGE PKG_VALIDACIONES_AGRICOLA_MAESTROS IS
   
   v_package varchar2(50) := 'PKG_VALIDACIONES_AGRICOLA_MAESTROS.';
 
 
 -- Funcion valida Periodos Agrícolas -(Pag 2) 
FUNCTION f_valida_periodos_agrícolas  ( p_COS_CODIGO            PERIODOS_AGRICOLAS.COS_CODIGO%type 
                                      , p_COS_NOMBRE            PERIODOS_AGRICOLAS.COS_NOMBRE%type 
                                      , p_COS_F_DESDE           PERIODOS_AGRICOLAS.COS_F_DESDE%type
                                      , p_COS_F_HASTA           PERIODOS_AGRICOLAS.COS_F_HASTA%type 
                                      , p_msg_return            IN OUT varchar2
                                      ) RETURN boolean;
 
 
 
 
 -- Función valida portainjertos (Pag 15 - app 135)
 FUNCTION f_valida_portainjertos          ( p_poi_nombre       portainjertos.poi_nombre%type                                 
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean;  
                                          
                                          
                                          
 end PKG_VALIDACIONES_AGRICOLA_MAESTROS;   

 -------- Body---------

 create or replace package body pkg_validaciones_agricola_maestros IS


------------ INICIO Valida Periodos Agrícolas -(Pag 2)  ------------------

FUNCTION f_valida_periodos_agricolas         ( p_COS_CODIGO          PERIODOS_AGRICOLAS.COS_CODIGO%type 
                                             , p_COS_NOMBRE          PERIODOS_AGRICOLAS.COS_NOMBRE%type
                                             , p_COS_F_DESDE         PERIODOS_AGRICOLAS.COS_F_DESDE%type
                                             , p_COS_F_HASTA         PERIODOS_AGRICOLAS.COS_F_HASTA%type 
                                             , p_msg_return            IN OUT varchar2
                                             ) RETURN boolean IS  
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_periodos_agricolas: ';
      
      e_error           exception;

   BEGIN

        BEGIN
            
           --Código
           if p_COS_CODIGO is NULL then
              p_msg_return := 'El campo Código no puede estar vacío.';
              return FALSE;
           end if;
           
           --Nombre
           if p_COS_NOMBRE is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
           
           if to_date(p_COS_F_DESDE,'dd/mm/rrrr') > to_date(SYSDATE,'dd/mm/rrrr') then
                  p_msg_return := 'Fecha Desde no puede ser mayor a la fecha actual.';
                  return FALSE;
           end if; 
           
           if to_date(p_COS_F_DESDE,'dd/mm/rrrr') > to_date(p_COS_F_HASTA,'dd/mm/rrrr') then
                  p_msg_return := 'Fecha Desde no puede ser mayor a Fecha Hasta.';
                  return FALSE;
           end if; 
  

                           
        END;

      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_periodos_agricolas;
  
------------ Fin Valida Periodos Agrícolas -(Pag 2) ------------------







------------------INICIO FUNCIÓN VALIDA PORTAINJERTOS (pag 15)-----------------------

FUNCTION f_valida_portainjertos     ( p_poi_nombre       portainjertos.poi_nombre%type
                                    , p_msg_return       IN OUT varchar2
                                    ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_portainjertos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_poi_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_portainjertos;
   
   ------------------FIN FUNCIÓN VALIDA PORTAINJERTOS (pag 15)-----------------------



END pkg_validaciones_agricola_maestros;


-------- f_valida_items -----------


DECLARE
   p_return            boolean         := null;
   p_prc_name          varchar2(100)   := 'f_valida_portainjertos ';
   p_msg_return        varchar2(4000)  := NULL;
   
   e_error             exception;
      
BEGIN
    
    p_return := pkg_validaciones_agricola_maestros.f_valida_portainjertos( :poi_nombre , p_msg_return );
   
    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;


---------------------------------------------------
