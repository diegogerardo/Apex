

--http://190.15.199.241:28080/ords/f?p=4550:1:6963378732170:::::

--Workspace: redv19_desa001

--usuario: Dsierra

--clave: Diego123$


DECLARE
   p_return            boolean         := null;
   p_prc_name          varchar2(100)   := 'f_valida_tipos_items ';
   p_msg_return        varchar2(4000)  := NULL;
   
   e_error             exception;
      
BEGIN
    
    p_return := pkg_validaciones_maestros_items.f_valida_TIPOS_items( :tii_nombre , p_msg_return );
   
    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;




--------- f_valida_items-----------
DECLARE
   p_return            boolean         := null;
   p_prc_name          varchar2(100)   := 'f_valida_vigencia_impuestos ';
   p_msg_return        varchar2(4000)  := NULL;
   
   e_error             exception;
      
BEGIN
    
    p_return := pkg_validaciones_maestros_generales.f_valida_vigencia_impuestos( :imv_fecha, :imv_imp_id , p_msg_return );
   
    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;


-----------------------------------------------------------------------------------------------



--****** Specification ********


 FUNCTION f_valida_lugares ( p_lug_nombre lugares.lug_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean; 



 --Función valida Zonas Comercials
    
    FUNCTION f_valida_zonasComerciales ( p_zon_nombre zonas_comerciales.zon_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;  


-- aca faltan







-- Body 

create or replace PACKAGE BODY pkg_validaciones_maestros  IS


FUNCTION f_valida_provincias ( p_prv_nombre provincias.prv_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_provincias: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           --p_prv_nombre:= trim(p_prv_nombre);
           
           if p_prv_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_provincias;
 





FUNCTION f_valida_localidades ( p_loc_nombre localidades.loc_nombre%type
                              , p_loc_c_postal localidades.loc_c_postal%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_localidades: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_loc_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;

           if p_loc_c_postal is NULL then
              p_msg_return := 'El campo Código Postal no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_localidades;
   
   
   
   
   ----------------------- INICIO Validación Lugares ----------------------
     
   
   FUNCTION f_valida_lugares ( p_lug_nombre lugares.lug_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_lugares: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           --p_prv_nombre:= trim(p_prv_nombre);
           
           if p_lug_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_lugares;

------------------- FIN Validación Lugares  --------------------



--------------- INICIO Validación Zonas Comerciales ------------
   
   
   FUNCTION f_valida_zonasComerciales ( p_zon_nombre zonas_comerciales.zon_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_zonasComerciales: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_zon_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_zonasComerciales;

------------ FIN Validación Zonas Comerciales --------------------

--------------- INICIO Validación Destinos ------------
   
   
   FUNCTION f_valida_destinos ( p_dst_nombre destinos.dst_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_destinos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_dst_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_destinos;

--------------- Fin Validación Destinos ------------


   
END pkg_validaciones_maestros;



------------- PKG_VALIDACIONES_MAESTROS_GENERALES   (Specification)  ------

create or replace package PKG_VALIDACIONES_MAESTROS_GENERALES as



-- Funcion valida Periodos Contables "Ejercicios contables" --

FUNCTION f_valida_periodosContbles ( p_ejc_nombre ejercicios_contables.ejc_nombre%type
                                    , p_msg_return       IN OUT varchar2
                                   ) RETURN boolean; 



end pkg_validaciones_maestros_generales;
