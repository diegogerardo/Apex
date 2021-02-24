create or replace PACKAGE BODY pkg_validaciones_maestros_tesoreria  IS


----------------------- INICIO Validación Valores tipos ----------------------

FUNCTION f_valida_valores_tipos ( p_tva_codigo valores_tipos.tva_codigo%type
                              , p_tva_nombre valores_tipos.tva_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_valores_tipos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_tva_codigo is NULL then
              p_msg_return := 'El campo Código no puede ser Nulo.';
              return FALSE;
           end if;


           if p_tva_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_valores_tipos;
   
------------------- FIN Validación valores tipos --------------------


--------------------INICIO Funcion VALIDA Tipos de valores / Subvalores (pag 114)--------------------------- 

    FUNCTION f_valida_subvalores ( p_valores_subvalores IN OUT valores_subvalores%ROWTYPE
                                 , p_msg_return       IN OUT varchar2
                                 ) RETURN boolean  IS
                                            
        v_procedimiento   varchar2(4000) := v_package || 'f_valida_subvalores: ';
        e_error           exception;

    BEGIN

       BEGIN     
        
          p_valores_subvalores.VAS_ID := trim(p_valores_subvalores.VAS_ID);
       
           if p_valores_subvalores.VAS_NOMBRE is NULL then
              p_msg_return := 'El campo nombre no puede ser Nulo.';
              return FALSE;
           end if;
       
           if p_valores_subvalores.VAS_ABREVIATURA is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;
                    
        END;
  
        return TRUE;

   EXCEPTION
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;

    END f_valida_subvalores;

--------------------FIN Funcion VALIDA Tipos de valores / Subvalores (pag 114)--------------------------- 


--------------------INICIO Funcion VALIDA Tipos de valores / Edicion Subvalor (pag 117)--------------------------- 

    FUNCTION f_valida_edicion_subvalores ( p_valores_subvalores IN OUT valores_subvalores%ROWTYPE
                                         , p_msg_return       IN OUT varchar2
                                         ) RETURN boolean  IS
                                            
        v_procedimiento   varchar2(4000) := v_package || 'f_valida_edicion_subvalores: ';
        e_error           exception;

    BEGIN

       BEGIN     
        
          p_valores_subvalores.VAS_ID := trim(p_valores_subvalores.VAS_ID);
       
           if p_valores_subvalores.VAS_NOMBRE is NULL then
              p_msg_return := 'El campo nombre no puede ser Nulo.';
              return FALSE;
           end if;
       
           if p_valores_subvalores.VAS_ABREVIATURA is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;
                    
        END;
  
        return TRUE;

   EXCEPTION
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;

    END f_valida_edicion_subvalores;

--------------------FIN Funcion VALIDA Tipos de valores / Edicion Subvalor (pag 117)--------------------------- 


----------------------- INICIO Validación cajas ----------------------

FUNCTION f_valida_cajas      ( p_caj_nombre cajas.caj_nombre%type
                              , p_caj_abreviatura cajas.caj_abreviatura%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_cajas: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_caj_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_caj_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_cajas;



------------------- FIN Validación cajas --------------------
   

----------------------- INICIO Validación grupos de movimientos de cajas ----------------------
   

     FUNCTION f_valida_grupos_movimientos_cajas ( p_cag_nombre cajas_grupos.cag_nombre%type   
                                                , p_cag_abreviatura cajas_grupos.cag_abreviatura%type
                                                , p_msg_return       IN OUT varchar2
                                                ) RETURN boolean  IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_grupos_movimientos_cajas: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_cag_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_cag_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_grupos_movimientos_cajas;

------------------- FIN f_valida_grupos_movimientos_cajas --------------------







----------------------- INICIO Validación tipos de valores ----------------------
   

     FUNCTION f_valida_tipos_valores ( p_val_nombre valores.val_nombre%type
                                     , p_val_abreviatura valores.val_abreviatura%type   
                                     , p_val_estado valores.val_estado%type
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_tipos_valores: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_val_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_val_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;


           if p_val_estado is NULL then
              p_msg_return := 'El campo Estado no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_tipos_valores;

------------------- FIN Validación tipos de valores  --------------------



----------------------- INICIO Validación plazas ----------------------
   

     FUNCTION f_valida_plazas ( p_pla_nombre plazas.pla_nombre%type   
                              , p_pla_abreviatura plazas.pla_abreviatura%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_plazas: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_pla_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_pla_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_plazas;

------------------- FIN f_valida plazas --------------------



----------------------- INICIO validacion transacciones bancarias ----------------------
   

     FUNCTION f_valida_transacciones_bancarias ( p_btr_trb_id bancos_transacciones.btr_trb_id%type   
                                               , p_btr_t_operacion bancos_transacciones.btr_t_operacion%type
                                               , p_msg_return       IN OUT varchar2
                                                ) RETURN boolean  IS  



                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_transacciones_bancarias: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_btr_trb_id is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_btr_t_operacion is NULL then
              p_msg_return := 'El campo Tipo Operación no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_transacciones_bancarias;

------------------- FIN validacion transacciones bancarias --------------------



  



----------------------- INICIO Validación cuentas bancarias p105 ----------------------
   
     FUNCTION f_valida_cuentas_bancarias ( p_cub_nombre           cuentas_bancarias.cub_nombre%type   
                                         , p_cub_abreviatura      cuentas_bancarias.cub_abreviatura%type
                                        -- , P_DIAS_VALIDEZ         CUENTAS_BANCARIAS.CUB_DIAS_VALIDEZ%TYPE 
                                         , p_msg_return       IN OUT varchar2
                                         ) RETURN boolean   IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_cuentas_bancarias: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_cub_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_cub_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;
           
         --  if nvl (P_DIAS_VALIDEZ, 0) < 0 then
        --     p_msg_return := 'Días de validez no puede ser menor que cero.';
         --     return FALSE;
        --   end if;
 

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_cuentas_bancarias;

------------------- FIN validacion cuentas bancarias--------------------


------------------- Inicio Validación Edición Cuentas Bancarias P106-------------

FUNCTION f_valida_edicion_cuentas_bancarias  ( p_edicion_cuentas_bancarias IN OUT cuentas_bancarias%ROWTYPE
                                             , p_msg_return       IN OUT varchar2
                                             ) RETURN boolean IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_edicion_cuentas_bancarias: ';
      
      e_error           exception;
      
    --  v_date            date;


   BEGIN

 
        BEGIN
        
            p_edicion_cuentas_bancarias.cub_id := trim(p_edicion_cuentas_bancarias.cub_id);
           
          
        
          if nvl (p_edicion_cuentas_bancarias.CUB_DIAS_VALIDEZ, 0) < 0 then
             p_msg_return := 'Días de validez no puede ser menor que cero.';
             return FALSE;
          end if;
          
      
      /*    Validación de fecha vigencia.    
          if p_edicion_cuentas_bancarias.CUB_F_VIGENCIA > sysdate then
              p_msg_return := 'La fecha no puede ser mayor a la actual.';
              return false;
          end if;
          
          */
          
          
          -- probando
        --  v_date := TO_DATE (p_edicion_cuentas_bancarias.CUB_F_VIGENCIA, 'DD-MON-RRRR');
        --  IF p_edicion_cuentas_bancarias.CUB_F_VIGENCIA NOT BETWEEN TO_DATE ('01-01-1900', 'DD-MON-RRRR') 
        --  AND TO_DATE ('31-12-9999', 'DD-MON-RRRR') THEN
        --  p_msg_return := 'Error Fecha.';
        --      return false;
        --  end if;
          
             
      END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_edicion_cuentas_bancarias;


------------------- FIN Validación Edición Cuentas Bancarias -------------




----------------------- INICIO Validación transacciones bancarias  ----------------------
   
     FUNCTION f_valida_transacciones_bancarias ( p_trb_nombre transacciones_bancarias.trb_nombre%type   
                              , p_trb_abreviatura transacciones_bancarias.trb_abreviatura%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean   IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_transacciones_bancarias: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_trb_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_trb_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_transacciones_bancarias;

------------------- FIN validacion transacciones bancarias --------------------



----------------------- INICIO Validación grupos conciliaciones  ----------------------
   
     FUNCTION f_valida_grupos_conciliaciones ( p_grc_nombre           grupos_conciliaciones.grc_nombre%type   
                                              , p_grc_abreviatura     grupos_conciliaciones.grc_abreviatura%type
                                              , p_msg_return          IN OUT varchar2
                                              ) RETURN boolean  IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_grupos_conciliaciones: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_grc_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_grc_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_grupos_conciliaciones;

------------------- FIN validacion grupos conciliaciones --------------------



----------------------- INICIO Validación operaciones bancarias (pag. 110) ----------------------
   
     FUNCTION f_valida_operaciones_bancarias ( p_opb_nombre              operaciones_bancarias.opb_nombre%type   
                                             , p_opb_abreviatura         operaciones_bancarias.opb_abreviatura%type
                                             , p_OPB_CANTIDAD_CUOTAS     operaciones_bancarias.OPB_CANTIDAD_CUOTAS%type
                                             , p_OPB_CAPITAL             operaciones_bancarias.OPB_CAPITAL%type
                                             , p_OPB_ESTADO              operaciones_bancarias.OPB_ESTADO%type                
                                             , p_msg_return              IN OUT varchar2
                                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_operaciones_bancarias: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_opb_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;


           if p_opb_abreviatura is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;

           if p_OPB_CANTIDAD_CUOTAS is NULL then
              p_msg_return := 'El campo Cuotas no puede ser Nulo.';
              return FALSE;
           end if;

           if p_OPB_CAPITAL is NULL then
              p_msg_return := 'El campo Capital no puede ser Nulo.';
              return FALSE;
           end if;

           if p_OPB_ESTADO is NULL then
              p_msg_return := 'El campo Estado no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_operaciones_bancarias;

------------------- FIN validacion operaciones bancarias --------------------





----------------------- INICIO Validación monedas ----------------------
   
     FUNCTION f_valida_monedas ( p_mon_nombre monedas.mon_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_monedas: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_mon_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_monedas;

------------------- FIN validacion monedas --------------------



--------------------INICIO Funcion Monedas / Edicion Monedas (pag 120)--------------------------- 
   
   FUNCTION f_valida_edicion_monedas     ( p_monedas IN OUT   monedas%ROWTYPE
                                         , p_msg_return       IN OUT varchar2
                                         ) RETURN boolean  IS
                                            
        v_procedimiento   varchar2(4000) := v_package || 'f_valida_edicion_monedas: ';
        v_cant_decimales    NUMBER(1,0);
        
        e_error           exception;

    BEGIN

       BEGIN     
        
          p_monedas.MON_ID := trim(p_monedas.MON_ID);
       
         v_cant_decimales := NVL(p_monedas.MON_DECIMALES_COMPRAS_CAB, 0);
         IF v_cant_decimales < 0 
         OR v_cant_decimales > 8 
         then
                  p_msg_return := 'Cant. Decimales Compras Totales debe estar comprendido entre 0 y 8.';
                   return FALSE;
         end if;
         
        --  // Se cambio el nombe del campo (En APEX ) a :p120_mon_decimales_CD por problemas con la validacióm
         
         IF NVL (p_monedas.MON_DECIMALES_COMPRAS_DET, 0) < 0 
         OR NVL (p_monedas.MON_DECIMALES_COMPRAS_DET, 0) > 8 
         then
                  p_msg_return := 'Cant. Decimales Compras Detalle debe estar comprendido entre 0 y 8.';
                   return FALSE;
         end if;



         IF nvl (p_monedas.MON_DECIMALES_VENTAS_CAB, 0) < 0 
         OR nvl (p_monedas.MON_DECIMALES_VENTAS_CAB, 0) > 8 
         then
                  p_msg_return := 'Cant. Decimales Ventas Totales debe estar comprendido entre 0 y 8.';
                   return FALSE;
         end if;
        
         IF nvl (p_monedas.MON_DECIMALES_VENTAS_DET, 0)  < 0 
         OR nvl (p_monedas.MON_DECIMALES_VENTAS_DET, 0)  > 8 
         then
                  p_msg_return := 'Cant. Decimales Ventas Detalle debe estar comprendido entre 0 y 8.';
                   return FALSE;
         end if;
        END;
  
        return TRUE;

   EXCEPTION
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;

    END f_valida_edicion_monedas;

--------------------FIN Funcion VALIDA Monedas / Edicion Monedas (pag 120)--------------------------- 





----------------------- INICIO Validación monedas cotizaciones (pag 116)----------------------
   
     FUNCTION f_valida_monedas_cotizaciones ( p_mco_fecha monedas_cotizaciones.mco_fecha%type 
                              , p_mco_mon_2_id monedas_cotizaciones.mco_mon_2_id%type   
                              , p_mco_cotizacion_compra monedas_cotizaciones.mco_cotizacion_compra%type    
                              , p_mco_cotizacion_venta monedas_cotizaciones.mco_cotizacion_venta%type                                 
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_monedas_cotizaciones: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_mco_fecha is NULL then
              p_msg_return := 'El campo Fecha no puede ser Nulo.';
              return FALSE;
           end if;
           
           
           if p_mco_fecha > sysdate then
              p_msg_return := 'La fecha no puede ser mayor a la actual.';
              return false;
           end if;
           
        
        /* 
          if to_date(p_mco_fecha,'dd/mm/rrrr') > to_date(sysdate,'dd/mm/rrrr') then
                  p_msg_return := 'La fecha no puede ser  mayor a la actual.';
                  return FALSE;
          end if; 
        */
        

           if p_mco_mon_2_id is NULL then
              p_msg_return := 'El campo Moneda no puede ser Nulo.';
              return FALSE;
           end if;


           if p_mco_cotizacion_compra is NULL then
              p_msg_return := 'El campo Cotización Compra no puede ser Nulo.';
              return FALSE;
           end if;

           if p_mco_cotizacion_venta is NULL then
              p_msg_return := 'El campo Cotización Venta no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_monedas_cotizaciones;
   
   
   
   

------------------- FIN validacion monedas cotizaciones --------------------


----------------------- INICIO Validación otras cotizaciones (pag 119)----------------------
   
     FUNCTION f_valida_otras_cotizaciones ( p_mco_fecha                 monedas_cotizaciones.mco_fecha%type 
                                          , p_mco_mon_id                monedas_cotizaciones.mco_mon_id%type  
                                          , p_mco_mon_2_id              monedas_cotizaciones.mco_mon_2_id%type   
                                          , p_mco_cotizacion_compra     monedas_cotizaciones.mco_cotizacion_compra%type    
                                          , p_mco_cotizacion_venta      monedas_cotizaciones.mco_cotizacion_venta%type                                 
                                          , p_msg_return                IN OUT varchar2
                                          ) RETURN boolean          IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_monedas_cotizaciones: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_mco_fecha is NULL then
              p_msg_return := 'El campo Fecha no puede ser Nulo.';
              return FALSE;
           end if;


           if p_mco_mon_id is NULL then
              p_msg_return := 'El campo Moneda Base no puede ser Nulo.';
              return FALSE;
           end if;

           if p_mco_mon_2_id is NULL then
              p_msg_return := 'El campo Moneda no puede ser Nulo.';
              return FALSE;
           end if;


           if p_mco_cotizacion_compra is NULL then
              p_msg_return := 'El campo Cotización Compra no puede ser Nulo.';
              return FALSE;
           end if;

           if p_mco_cotizacion_venta is NULL then
              p_msg_return := 'El campo Cotización Venta no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_otras_cotizaciones;

------------------- FIN validacion otras cotizaciones --------------------


----------------------- INICIO Validación entes recaudadores ----------------------
   
     FUNCTION f_valida_entes_recaudadores ( p_ere_nombre entes_recaudadores.ere_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_entes_recaudadores: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_ere_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_entes_recaudadores;

------------------- FIN validacion entes recaudadores --------------------



----------------------- INICIO Validación modelo cheque ----------------------
   
     FUNCTION f_valida_modelo_cheque ( p_ich_nombre impresiones_cheques.ich_nombre%type   
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS

                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_modelo_cheque: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           if p_ich_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede ser Nulo.';
              return FALSE;
           end if;

                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
      
   END f_valida_modelo_cheque;

------------------- FIN validacion entes recaudadores --------------------




END pkg_validaciones_maestros_tesoreria;
