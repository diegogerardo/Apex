create or replace package PKG_VALIDACIONES_MAESTROS_ITEMS as

v_package varchar2(50) := 'pkg_validaciones_maestros_items.';

-- Funcion valida Grupos / Subgrupos (Pag 42) 


----Grupos
FUNCTION f_valida_grupos         ( p_gri_codigo        items_grupos.gri_codigo%type                                 
                                 , p_gri_nombre        items_grupos.gri_nombre%type
                                 , p_msg_return        IN OUT varchar2
                                 ) RETURN boolean; 


--- Subgrupos
FUNCTION f_valida_subgrupos      ( p_sgi_codigo        items_subgrupos.sgi_codigo%type                                 
                                 , p_sgi_nombre        items_subgrupos.sgi_nombre%type
                                 , p_msg_return        IN OUT varchar2
                                 ) RETURN boolean; 


-- Funcion valida RUBROS -(Pag 44) 
FUNCTION f_valida_rubros         ( p_rui_codigo        items_rubros.rui_codigo%type                                 
                                 , p_rui_nombre        items_rubros.rui_nombre%type
                                 , p_msg_return        IN OUT varchar2
                                 ) RETURN boolean; 
                                 
                                 


-- Funcion valida TIPOS DE ITEMS  -(Pag 44) 
FUNCTION f_valida_tipos_items    ( p_tii_nombre        items_tipos.tii_nombre%type                                 
                                 , p_msg_return        IN OUT varchar2

                                 ) RETURN boolean; 
                                                                  


-- Funcion valida  Materiales   -(Pag 55) 
FUNCTION f_valida_materiales     ( p_mat_nombre        items_materiales.mat_nombre%type                                 
                                 , p_msg_return        IN OUT varchar2

                                 ) RETURN boolean; 


-- Funcion valida  Marcas       -(Pag 56) 
FUNCTION f_valida_marcas         ( p_mar_nombre        items_marcas.mar_nombre%type                                 
                                 , p_msg_return        IN OUT varchar2

                                 ) RETURN boolean; 


-- Funcion valida  colores      -(Pag 57) 
FUNCTION f_valida_colores        ( p_col_nombre        items_colores.col_nombre%type                                 
                                 , p_msg_return        IN OUT varchar2

                                 ) RETURN boolean; 
                                 
-- Funcion valida Variedades    -(Pag 54) 
FUNCTION f_valida_variedades     ( p_var_nombre        items_variedades.var_nombre%type                                 
                                 , p_msg_return        IN OUT varchar2

                                 ) RETURN boolean;                                  

-- Funcion valida Calidades     -(Pag 47) 
FUNCTION f_valida_calidades      ( p_cld_nombre        items_calidades.cld_nombre%type                                 
                                 , p_msg_return        IN OUT varchar2

                                 ) RETURN boolean;                                  





end PKG_VALIDACIONES_MAESTROS_ITEMS;
