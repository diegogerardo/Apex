create or replace package PKG_VALIDACIONES_MAESTROS_VENTAS  IS
  
   v_package varchar2(50) := 'pkg_validaciones_maestros_ventas.';


-------Función valida limite de creditos (pag 121)
    FUNCTION f_valida_limites_de_creditos ( p_ldc_nombre             limites_de_creditos.ldc_nombre%type
                                          , p_ldc_mon_id             limites_de_creditos.ldc_mon_id%type
                                          , p_LDC_M_LIMITE_TOTAL     limites_de_creditos.LDC_M_LIMITE_TOTAL%type
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean;            


/*
-------Función valida listas de precios (pag 122)
    FUNCTION f_valida_listas_precios( p_LPX_NOMBRE             listas_precios.LPX_NOMBRE%type
                                    ,  p_LPX_F_ALTA_LISTA      listas_precios.LPX_F_ALTA_LISTA%type
                                    ,  p_LPX_F_BAJA_LISTA      listas_precios.LPX_F_BAJA_LISTA%type 
                                    ,  p_LPX_T_MONEDA          listas_precios.LPX_T_MONEDA%type
                                    , p_LPX_DESCUENTO          listas_precios.LPX_DESCUENTO%type 
                                    , p_msg_return             IN OUT varchar2
                                    ) RETURN boolean;   

-------Función valida detalle listas de precios  (pag 122)
    FUNCTION f_valida_detalle_listas_precios( p_dlp_ite_id      det_listas_precios.dlp_ite_id%type
                                             , p_dlp_cla_id     det_listas_precios.dlp_cla_id%type
                                             , p_dlp_tcl_id     det_listas_precios.dlp_tcl_id%type
                                             , p_DLP_PX_VENTA   det_listas_precios.DLP_PX_VENTA%type 
                                             , p_msg_return     IN OUT varchar2
                                             ) RETURN boolean;            
                         
-------Función valida estructuras de precios -(Pag 124)
   
    FUNCTION f_valida_valida_estructuras_precios ( P_EPX_NOMBRE              estructuras_precio.EPX_NOMBRE%type
                                                 , P_EFX_PORC_VARIACION      estructuras_precio.EFX_PORC_VARIACION%type
                                                 , P_EPX_FECHA_VIG_DESDE     estructuras_precio.EPX_FECHA_VIG_DESDE%type
                                                 , p_EPX_FECHA_VIG_HASTA     estructuras_precio.EPX_FECHA_VIG_HASTA%TYPE 
                                                 ) RETURN boolean;
   
   

-------Función valida parametros comisiones  
    FUNCTION f_valida_parametros_comisiones ( p_PCO_COM_PENDIENTE_ID    parametros_comisiones.PCO_COM_PENDIENTE_ID%type
                                             , p_PCO_TCO_PENDIENTE_ID   parametros_comisiones.PCO_TCO_PENDIENTE_ID%type
                                             , p_PCO_ITE_ID             parametros_comisiones.PCO_ITE_ID%type
                                             , p_msg_return             IN OUT varchar2
                                             ) RETURN boolean; 
                                             
-------Función valida listas comisiones cabecera  (Pag 138 Y 139)
    FUNCTION f_valida_listas_comisiones_cab ( p_LCO_NOMBRE           listas_comisiones.LCO_NOMBRE%type
                                             , p_LCO_TIPO            listas_comisiones.LCO_TIPO%type
                                             , p_LCO_PORC_COMISION   listas_comisiones.LCO_PORC_COMISION%type
                                             , p_LCO_FEC_VIG_DESDE   listas_comisiones.LCO_FEC_VIG_DESDE%type
                                             , p_LCO_FEC_VIG_HASTA   listas_comisiones.LCO_FEC_VIG_HASTA%type
                                             , p_msg_return             IN OUT varchar2
                                             ) RETURN boolean; 



        VOY POR ACA                                     
-------Función valida listas comisiones detalle (P 138)
    FUNCTION f_valida_listas_comisiones_det ( p_DLO_ITE_ID           det_listas_comisiones.DLO_ITE_ID%type
                                             , p_DLO_CLA_ID          det_listas_comisiones.DLO_CLA_ID%type
                                             , p_DLO_TCL_ID           det_listas_comisiones.DLO_TCL_ID%type
                                             , p_DLO_PORC_COMISION     det_listas_comisiones.DLO_PORC_COMISION%TYPE
                                             , p_msg_return             IN OUT varchar2
                                             ) RETURN boolean;                                              

-------Función valida Asignaciones (pag 136)
    FUNCTION f_valida_asignaciones_comisiones ( p_asignaciones_comisiones IN OUT asignaciones_comisiones%ROWTYPE
                                 , p_msg_return       IN OUT varchar2
                                 ) RETURN boolean;


-------Función valida rangos (pag 139)
    FUNCTION f_valida_rangos ( p_DLV_MONTO_DESDE          det_listas_volumenes.DLV_MONTO_DESDE%type
                              , p_DLV_MONTO_HASTA          det_listas_volumenes.DLV_MONTO_HASTA%type
                              , p_DLV_PORC_COMISION        det_listas_volumenes.DLV_PORC_COMISION%type
                              , p_msg_return             IN OUT varchar2
                              ) RETURN boolean;             

-------Función valida listas de inclusion
    FUNCTION f_valida_listas_inclusion ( p_FCL_ITE_ID         formulas_clientes.FCL_ITE_ID%type
                                         , p_FCL_CLA_ID         formulas_clientes.FCL_CLA_ID%type
                                         , p_FCL_TCL_ID         formulas_clientes.FCL_TCL_ID%type
                                         , p_msg_return             IN OUT varchar2
                                         ) RETURN boolean;     
   
   
   
*/         


END pkg_validaciones_maestros_ventas;
