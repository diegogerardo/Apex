create or replace PACKAGE pkg_validaciones_maestros_tesoreria IS
   
  
   v_package varchar2(50) := 'pkg_validaciones_maestros_tesoreria.';



-------Función valida valores tipos
    FUNCTION f_valida_valores_tipos ( p_tva_codigo valores_tipos.tva_codigo%type
                              , p_tva_nombre valores_tipos.tva_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;            

-------Función valida Tipos de valores / Subvalores (pag 114)
    FUNCTION f_valida_subvalores ( p_valores_subvalores IN OUT valores_subvalores%ROWTYPE
                                 , p_msg_return       IN OUT varchar2
                                 ) RETURN boolean;

-------Función valida Tipos de valores / Edicion Subvalor (pag 117)
    FUNCTION f_valida_edicion_subvalores ( p_valores_subvalores IN OUT valores_subvalores%ROWTYPE
                                         , p_msg_return       IN OUT varchar2
                                         ) RETURN boolean;



-------Función valida cajas   
     FUNCTION f_valida_cajas ( p_caj_nombre cajas.caj_nombre%type   
                              , p_caj_abreviatura cajas.caj_abreviatura%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;  

-------Función valida grupos de movimientos de cajas   
     FUNCTION f_valida_grupos_movimientos_cajas ( p_cag_nombre cajas_grupos.cag_nombre%type   
                              , p_cag_abreviatura cajas_grupos.cag_abreviatura%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;  


-------Función valida tipos de valores   
     FUNCTION f_valida_tipos_valores ( p_val_nombre valores.val_nombre%type   
                              , p_val_abreviatura valores.val_abreviatura%type
                              , p_val_estado valores.val_estado%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;  
   

-------Función valida plazas  
     FUNCTION f_valida_plazas ( p_pla_nombre plazas.pla_nombre%type   
                              , p_pla_abreviatura plazas.pla_abreviatura%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;  

-------Función valida transacciones bancarias  
     FUNCTION f_valida_transacciones_bancarias ( p_btr_trb_id bancos_transacciones.btr_trb_id %type   
                              , p_btr_t_operacion bancos_transacciones.btr_t_operacion%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;  

-------Función valida cuentas bancarias  (Pag 105)
     FUNCTION f_valida_cuentas_bancarias  ( p_cub_nombre            cuentas_bancarias.cub_nombre%type   
                                          , p_cub_abreviatura      cuentas_bancarias.cub_abreviatura%type
                                          , p_msg_return           IN OUT varchar2
                                          ) RETURN boolean;  
                                          
---- Función Valida Edición Cuentas Bancarias (Pag 106)   

     FUNCTION f_valida_edicion_cuentas_bancarias ( p_edicion_cuentas_bancarias  IN OUT cuentas_bancarias%ROWTYPE
                                                 , p_msg_return                 IN OUT varchar2
                                                 )return boolean;
                                          
     


-------Función valida transacciones bancarias  
     FUNCTION f_valida_transacciones_bancarias ( p_trb_nombre        transacciones_bancarias.trb_nombre%type   
                                              , p_trb_abreviatura     transacciones_bancarias.trb_abreviatura%type
                                              , p_msg_return           IN OUT varchar2
                                              ) RETURN boolean;  

-------Función valida grupos conciliaciones
     FUNCTION f_valida_grupos_conciliaciones ( p_grc_nombre           grupos_conciliaciones.grc_nombre%type   
                                              , p_grc_abreviatura     grupos_conciliaciones.grc_abreviatura%type
                                              , p_msg_return          IN OUT varchar2
                                              ) RETURN boolean;  

-------Función valida operaciones bancarias  (PAG 110)
     FUNCTION f_valida_operaciones_bancarias ( p_opb_nombre              operaciones_bancarias.opb_nombre%type   
                                             , p_opb_abreviatura         operaciones_bancarias.opb_abreviatura%type
                                             , p_OPB_CANTIDAD_CUOTAS     operaciones_bancarias.OPB_CANTIDAD_CUOTAS%type
                                             , p_OPB_CAPITAL             operaciones_bancarias.OPB_CAPITAL%type
                                             , p_OPB_ESTADO              operaciones_bancarias.OPB_ESTADO%type                
                                             , p_msg_return              IN OUT varchar2
                                             ) RETURN boolean;
                                             
                                             
                                             
                                             
                                             

-------Función valida monedas (pag 115)
     FUNCTION f_valida_monedas ( p_mon_nombre monedas.mon_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean; 

-------Función valida Monedas / Edicion Monedas (pag 120)
    FUNCTION f_valida_edicion_monedas ( p_monedas IN OUT monedas%ROWTYPE
                                         , p_msg_return       IN OUT varchar2
                                         ) RETURN boolean;



-------Función valida monedas cotizaciones
     FUNCTION f_valida_monedas_cotizaciones ( p_mco_fecha monedas_cotizaciones.mco_fecha%type 
                              , p_mco_mon_2_id monedas_cotizaciones.mco_mon_2_id%type    
                              , p_mco_cotizacion_compra monedas_cotizaciones.mco_cotizacion_compra%type    
                              , p_mco_cotizacion_venta monedas_cotizaciones.mco_cotizacion_venta%type    
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean; 
                              
                      
                              
    
-------Función valida otras cotizaciones (pag 119)
     FUNCTION f_valida_otras_cotizaciones ( p_mco_fecha monedas_cotizaciones.mco_fecha%type 
                              , p_mco_mon_id monedas_cotizaciones.mco_mon_id%type
                              , p_mco_mon_2_id monedas_cotizaciones.mco_mon_2_id%type    
                              , p_mco_cotizacion_compra monedas_cotizaciones.mco_cotizacion_compra%type    
                              , p_mco_cotizacion_venta monedas_cotizaciones.mco_cotizacion_venta%type    
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean;  

-------Función valida entes recaudadores
     FUNCTION f_valida_entes_recaudadores ( p_ere_nombre entes_recaudadores.ere_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean; 

-------Función valida modelo cheque
     FUNCTION f_valida_modelo_cheque ( p_ich_nombre impresiones_cheques.ich_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean; 


END pkg_validaciones_maestros_tesoreria;
