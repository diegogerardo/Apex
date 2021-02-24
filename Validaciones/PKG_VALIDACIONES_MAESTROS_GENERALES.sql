create or replace PACKAGE pkg_validaciones_maestros_generales IS
   
  
   v_package varchar2(50) := 'pkg_validaciones_maestros_generales.';


-------  Función valida periodos contables

    FUNCTION f_valida_periodos_contables  ( p_ejc_nombre ejercicios_contables.ejc_nombre%type                                 
                                          , p_ejc_fecha_desde ejercicios_contables.ejc_fecha_desde%type
                                          , p_ejc_fecha_hasta ejercicios_contables.ejc_fecha_hasta%type
                                          , p_ejc_estado ejercicios_contables.ejc_estado%type 
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean;            

-------- Función valida Centros de Costos
    
     FUNCTION f_valida_centros_costos     ( p_cec_nombre       centros_costos.cec_nombre%type                                 
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean;  


-------  Función valida TIPOS DE DEPÓSITOS

    FUNCTION f_valida_tipos_depositos     ( p_tde_descripcion  depositos_tipos.tde_descripcion%type                                 
                                          , p_tde_clase        depositos_tipos.tde_clase%type
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean;            

-------- Función valida DEPÓSITOS
    
     FUNCTION f_valida_depositos          ( p_dep_nombre        depositos.dep_nombre%type                                 
                                          , p_msg_return        IN OUT varchar2
                                          ) RETURN boolean;  

-------- Función valida ACTIVIDADES
    
     FUNCTION f_valida_actividades        ( p_atd_nombre        actividades.atd_nombre%type                                 
                                          , p_msg_return        IN OUT varchar2
                                          ) RETURN boolean;  


-------- Función valida DOMINIOS


    FUNCTION f_valida_dominios            ( p_dno_dominio       dominios.dno_dominio%type                                 
                                          , p_msg_return        IN OUT varchar2
                                          ) RETURN boolean;        

-------- Función valida VIGENCIA DE IMPUESTOS


    FUNCTION f_valida_vigencia_impuestos  ( p_imv_fecha         impuestos_vigencias.imv_fecha%type
                                          , p_imv_imp_id        impuestos_vigencias.imv_imp_id%type
                                          , p_msg_return        IN OUT varchar2
                                          ) RETURN boolean;        
                                          
-------- Función valida IMPUESTOS


    FUNCTION f_valida_impuestos           ( p_imp_nombre   impuestos.imp_nombre%type
                                        --, p_imp_tipo     impuestos.imp_tipo%type              
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean;                                                  

                 -- Tengo que revisar no valida bien el nombre. 
                 
                 
-------- Función valida TIPO DE OPERACIONES


    FUNCTION f_valida_tipo_operaciones    ( p_toc_nombre       tipo_operacion_comp.toc_nombre%type
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean;                                                   

                  
-------- Función valida TIPO DE COMPROBANTES


    FUNCTION f_valida_tipo_comprobantes  ( p_tco_codigo       comprobantes_tipos.tco_codigo%type
                                         , p_tco_nombre       comprobantes_tipos.tco_nombre%type
                                         , p_msg_return       IN OUT varchar2
                                         ) RETURN boolean;           
                                         

-------- Función valida Clase de Comprobante


    FUNCTION f_valida_comprobantes_clases   ( p_cco_descripcion       comprobantes_clases.cco_descripcion%type
                                            , p_cco_letra             comprobantes_clases.cco_letra%type
                                            , p_msg_return            IN OUT varchar2
                                            ) RETURN boolean;               



-------- Función valida COMPROBANTES


    FUNCTION f_valida_comprobantes          ( p_com_nombre              comprobantes.com_nombre%type
                                            , p_com_codigo              comprobantes.com_codigo%type
                                            , p_msg_return              IN OUT varchar2
                                            ) RETURN boolean;    
                                                     

-------- Función valida Configuracion de Impresiones ( pag 22 )  


   FUNCTION f_valida_configuracion_impresiones      ( p_fim_tipo_salida      comprobantes_formato_impresion.fim_tipo_salida%type
                                                    , p_msg_return           IN OUT varchar2
                                                    ) RETURN boolean;    
                                            
-------- Función valida CLASIFICADRES ( pag 10 )  


   FUNCTION f_valida_clasificadores       ( p_cls_nombre              clasificadores.cls_nombre%type
                                          , p_msg_return              IN OUT varchar2
                                          ) RETURN boolean;    
                                                                        
                                                                        
-------- Función valida numeradores ( pag 26 )  


   FUNCTION f_valida_numeradores          ( p_num_nombre              numeradores.num_nombre%type
                                          , p_msg_return              IN OUT varchar2
                                          ) RETURN boolean;    
                                                                                                                                                           
                                            
-------- Función valida CONFIGURACIóN INTERFACES ( pag 34 )  


   FUNCTION f_valida_configuracion_interfaces          ( p_coi_servidor              configuraciones_interfaces.coi_servidor%type
                                                       , p_coi_puerto                configuraciones_interfaces.coi_puerto%type
                                                       , p_msg_return                IN OUT varchar2
                                                       ) RETURN boolean;                                              
                                       
                                       
                                       
                                       
-------- Función valida fases INTERFACES ( pag 35 )  


   FUNCTION f_valida_fase_interfaz           ( p_fas_nombre              fases_interfaces.fas_nombre%type
                                             , p_msg_return              IN OUT varchar2
                                             ) RETURN boolean;                                       
                                       
                                       
-------- Función valida Impuestos Interfaz ( pag 37 )  


   FUNCTION f_valida_impuestos_interfaz      ( p_imi_c_impuesto          Impuestos_interfaces.imi_c_impuesto%type
                                             , p_msg_return              IN OUT varchar2
                                             ) RETURN boolean;                                       
                                                                              


-------- Función valida Impuestos Interfaz ( pag 38 )  


   FUNCTION f_valida_comprobantes_interfaz    ( p_CIN_C_COMPROBANTE         comprobantes_interfaces.CIN_C_COMPROBANTE%type
                                             , p_msg_return                IN OUT varchar2
                                             ) RETURN boolean;                                                                                 
                                       
                                       
-------- Función valida VEHICULOS ( pag 125 )  


   FUNCTION f_valida_vehiculos              ( p_veh_patente         vehiculos.veh_patente%type
                                            , p_msg_return          IN OUT varchar2
                                            ) RETURN boolean;                                                                                 
                                       






   
END pkg_validaciones_maestros_generales;
