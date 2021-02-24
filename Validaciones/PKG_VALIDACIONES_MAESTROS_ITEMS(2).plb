create or replace PACKAGE BODY pkg_validaciones_maestros_items  IS


------------ INICIO Valida Grupos  (Pag 42) ------------------


 
FUNCTION f_valida_grupos             ( p_gri_codigo        items_grupos.gri_codigo%type                                 
                                     , p_gri_nombre        items_grupos.gri_nombre%type
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_grupos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Código
           if p_gri_codigo is NULL then
              p_msg_return := 'El campo "Código" no puede estar vacío.';
              return FALSE;
           end if;
           
           --Nombre
            if p_gri_nombre is NULL then
               p_msg_return := 'El campo "Nombre" no puede estar vacío.';
               return FALSE;
           end if;
                                 
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_grupos;
 
------------ Fin Valida Grupos ------------------

------------ INICIO Valida Subrupos (Pag 42) ------------------


 
FUNCTION f_valida_subgrupos          ( p_sgi_codigo        items_subgrupos.sgi_codigo%type                                 
                                     , p_sgi_nombre        items_subgrupos.sgi_nombre%type
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_subgrupos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Código
           if p_sgi_codigo is NULL then
              p_msg_return := 'El campo "Código" no puede estar vacío.';
              return FALSE;
           end if;
           
           --Nombre
            if p_sgi_nombre is NULL then
               p_msg_return := 'El campo "Nombre" no puede estar vacío.';
               return FALSE;
           end if;
                                 
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_subgrupos;
 
------------ Fin Valida Grupos ------------------

------------ INICIO Valida RUBROS  (Pag 44) ------------------


 
FUNCTION f_valida_rubros             ( p_rui_codigo        items_rubros.rui_codigo%type                                 
                                     , p_rui_nombre        items_rubros.rui_nombre%type
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_rubros: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Código
           if p_rui_codigo  is NULL then
              p_msg_return := 'El campo "Código" no puede estar vacío.';
              return FALSE;
           end if;
           
           --Nombre
            if  p_rui_nombre is NULL then
               p_msg_return := 'El campo "Nombre" no puede estar vacío.';
               return FALSE;
           end if;
                                 
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_rubros;
 
------------ Fin Valida Rubros------------------


------------ INICIO Valida TIPOS DE ITEMS  (Pag 46) ------------------


 
FUNCTION f_valida_tipos_items        ( p_tii_nombre       items_tipos.tii_nombre%type                                 
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_tipos_items: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Nombre
           if p_tii_nombre  is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                                            
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_tipos_items;
 
------------ Fin Valida TIPOS DE ITEMS------------------

------------ INICIO Valida Materiales  (Pag 46) ------------------


 
FUNCTION f_valida_materiales        ( p_mat_nombre       items_materiales.mat_nombre%type                                 
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_materiales: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Nombre
           if p_mat_nombre  is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                                            
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_materiales;
 
------------ Fin Valida Materiales------------------

------------ INICIO Valida Marcas  (Pag 56) ------------------


 
FUNCTION f_valida_marcas             ( p_mar_nombre       items_marcas.mar_nombre%type                                 
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_marcas: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Nombre
           if p_mar_nombre  is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                                            
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_marcas;
 
------------ Fin Valida Marcas------------------


------------ INICIO Valida Colores  (Pag 57) ------------------


 
FUNCTION f_valida_colores            ( p_col_nombre       items_colores.col_nombre%type                                 
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_colores: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Nombre
           if p_col_nombre  is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                                            
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_colores;
 
------------ Fin Valida Colores------------------

------------ INICIO Valida Variedades  (Pag 54) ------------------


 
FUNCTION f_valida_Variedades         ( p_var_nombre       items_variedades.var_nombre%type                                 
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_variedades: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Nombre
           if p_var_nombre  is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                                            
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_variedades;
 
------------ Fin Valida variedades------------------

------------ INICIO Valida Calidades  (Pag 47) ------------------


 
FUNCTION f_valida_calidades          ( p_cld_nombre       items_calidades.cld_nombre%type                                 
                                     , p_msg_return      IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_calidades: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Nombre
           if p_cld_nombre  is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                                            
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_calidades;
 
------------ Fin Valida calidades------------------


END pkg_validaciones_maestros_items;
