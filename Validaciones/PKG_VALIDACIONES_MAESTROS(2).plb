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



--------------- Inicio Validación Formas de pago (Pag 6) ------------

FUNCTION f_valida_forma_pagos         ( p_fpa_descripcion     forma_pagos.fpa_descripcion%type
                                      , p_fpa_b_valida_vto    forma_pagos.fpa_b_valida_vto%type
                                      , p_fpa_b_modifica_vto  forma_pagos.fpa_b_modifica_vto%type
                                      , p_fpa_b_contado       forma_pagos.fpa_b_contado%type
                                      , p_msg_return         IN OUT varchar2
                                      ) RETURN boolean  IS
 
 
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_forma_pagos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_fpa_descripcion  is NULL then
              p_msg_return := 'El campo "Descripción" no puede ser Nulo.';
              return FALSE;
           end if;

           if p_fpa_b_valida_vto is NULL then
              p_msg_return := 'El campo "Valida Vto" no puede ser Nulo.';
              return FALSE;
           end if;
           
            if p_fpa_b_modifica_vto is NULL then
              p_msg_return := 'El campo "Modifica Vto" no puede ser Nulo.';
              return FALSE;
           end if;
           
           if p_fpa_b_contado is NULL then
              p_msg_return := 'El campo "Es de contado" no puede ser Nulo.';
              return FALSE;
           end if;


                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_forma_pagos;









   

   
END pkg_validaciones_maestros;

