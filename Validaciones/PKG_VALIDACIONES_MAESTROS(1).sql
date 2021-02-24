create or replace PACKAGE pkg_validaciones_maestros IS
   
   v_package varchar2(50) := 'pkg_validaciones_maestros.';
--
--   -- registro con parametros GENERICO --
--   type r_parametros is record ( par1      VARCHAR2(50), par2   VARCHAR2(50), par3    VARCHAR2(50)
--                            , par4      VARCHAR2(50), par5    VARCHAR2(50), par6    VARCHAR2(50)
--                            , par7      VARCHAR2(50), par8   VARCHAR2(50), par9    VARCHAR2(50)
--                            , par10     VARCHAR2(50), par11  VARCHAR2(50), par12  VARCHAR2(50));

    FUNCTION f_valida_provincias ( p_prv_nombre provincias.prv_nombre%type
                                 , p_msg_return       IN OUT varchar2
                                 ) RETURN boolean; 

    FUNCTION f_valida_localidades ( p_loc_nombre localidades.loc_nombre%type
                              , p_loc_c_postal localidades.loc_c_postal%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean; 
                              
    
    --Función valida lugares
    
    FUNCTION f_valida_lugares ( p_lug_nombre lugares.lug_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean; 
                              
                              
                              
   --Función valida Zonas Comercials
    
    FUNCTION f_valida_zonasComerciales ( p_zon_nombre zonas_comerciales.zon_nombre%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;                                
                                      
                                      
   --Función valida Destinos
    
    FUNCTION f_valida_destinos ( p_dst_nombre destinos.dst_nombre%type
                               , p_msg_return       IN OUT varchar2
                               ) RETURN boolean;  
                              
                              
   -- Función Valida Formas de Pago
  
    
    FUNCTION f_valida_forma_pagos     ( p_fpa_descripcion     forma_pagos.fpa_descripcion%type
                                      , p_fpa_b_valida_vto    forma_pagos.fpa_b_valida_vto%type
                                      , p_fpa_b_modifica_vto  forma_pagos.fpa_b_modifica_vto%type
                                      , p_fpa_b_contado       forma_pagos.fpa_b_contado%type
                                      , p_msg_return          IN OUT varchar2
                                      ) RETURN boolean;                              
                              
                              
                              
                              
   
END pkg_validaciones_maestros;
