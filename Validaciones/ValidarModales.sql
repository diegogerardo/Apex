--- SPECIFICATION-----

 FUNCTION f_valida_edicion_centros_costos  ( p_edicion_centros_costos IN OUT centros_costos%ROWTYPE
                                           , p_msg_return       IN OUT varchar2
                                           ) RETURN boolean;              

------BODY------------

FUNCTION f_valida_edicion_centros_costos  ( p_edicion_centros_costos IN OUT centros_costos%ROWTYPE
                                          , p_msg_return       IN OUT varchar2
                                          ) RETURN boolean IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_edicion_centros_costos: ';
      
      e_error           exception;


   BEGIN


        BEGIN
           p_edicion_centros_costos.cec_id := trim(p_edicion_centros_costos.cec_id);
           
           if p_edicion_centros_costos.CEC_ABREVIATURA is NULL then
              p_msg_return := 'El campo Abreviatura no puede ser Nulo.';
              return FALSE;
           end if;

            if p_edicion_centros_costos.CEC_FECHA_VIGENCIA is NULL then
              p_msg_return := 'El campo Clave Externa no puede ser Nulo.';
              return FALSE;
           end if;

           
/*
           if p_movimientos_cab.msc_com_id is NULL then
              p_msg_return := 'El campo Comprobantes no puede ser Nulo.';
              return FALSE;
           end if;
           
           if p_movimientos_cab.msc_r_comproban is NULL then
              p_msg_return := 'El campo Nro.Comprobante no puede ser Nulo.';
              return FALSE;
           end if;
                      
           if p_movimientos_cab.msc_f_movimiento is NULL then
              p_msg_return := 'El campo Fecha Movimiento no puede ser Nulo.';
              return FALSE;
           end if;

           
           if p_movimientos_cab.msc_f_grabacion is NULL then
              p_msg_return := 'El campo Fecha Grabación no puede ser Nulo.';
              return FALSE;
           end if;                                 

           if p_movimientos_cab.msc_usu_id is NULL then
              p_msg_return := 'El campo Usuario no puede ser Nulo.';
              return FALSE;
           end if;

           if p_movimientos_cab.msc_estado is NULL then
              p_msg_return := 'El campo Estado no puede ser Nulo.';
              return FALSE;
           end if;
          */ 
            --p_msc_usu_id         := nvl (v('APP_USER'), user);
            
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_edicion_centros_costos;



-------- F_valida_items ---------


DECLARE
   p_return                boolean         := NULL;
   p_prc_name              varchar2(100)   := 'f_valida_edicion_centros_costos: ';
   p_msg_return            varchar2(4000)  := NULL;
   r_edit_centros_costos   centros_costos%rowtype;
   
   e_error             exception;
   
   
BEGIN

      r_edit_centros_costos.cec_abreviatura         := :p71_cec_abreviatura;
      r_edit_centros_costos.CEC_clave_externa       := :p71_cec_clave_externa;
      r_edit_centros_costos.CEC__FECHA_VIGENCIA     := :p71_cec_fecha_vigencia;
    --r_movimientos_cab.msc_suc_id         := :P11_msc_suc_id;
   -- r_movimientos_cab.msc_com_id         := :P11_msc_com_id;
   -- r_movimientos_cab.msc_r_comproban    := :P11_msc_r_comproban;
   -- r_movimientos_cab.msc_f_movimiento   := :P11_msc_f_movimiento;
   -- r_movimientos_cab.msc_f_grabacion    := :P11_msc_f_grabacion;
   -- r_movimientos_cab.msc_usu_id         := :P11_msc_usu_id;
   -- r_movimientos_cab.msc_estado         := :P11_msc_estado;
    
    p_return := PKG_VALIDACIONES_MAESTROS_GENERALES.f_valida_edicion_centros_costos( r_edit_centros_costos, p_msg_return );
                  
    if p_return = TRUE then              
                 :p71_cec_abreviatura    := r_edit_centros_costos.cec_abreviatura;
                 :p71_cec_clave_externa  := r_edit_centros_costos.cec_clave_externa;
                 :p71_cec_fecha_vigencia := r_edit_centros_costos.cec_fecha_vigencia;
     --          :P11_msc_suc_id         := r_movimientos_cab.msc_suc_id;
       --        :P11_msc_com_id         := r_movimientos_cab.msc_com_id;
         --      :P11_msc_r_comproban    := r_movimientos_cab.msc_r_comproban;
           --    :P11_msc_f_movimiento   := r_movimientos_cab.msc_f_movimiento;
              -- :P11_msc_f_grabacion    := r_movimientos_cab.msc_f_grabacion;
              -- :P11_msc_usu_id         := r_movimientos_cab.msc_usu_id;
             --  :P11_msc_estado         := r_movimientos_cab.msc_estado;
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;






----------------------------------------------------------------------------------
--spec
-------Función valida Items / Edición Medida y Asignaciones / Cosechas Asignadas (pag 81)
    FUNCTION f_valida_cosechas_asignadas       ( p_cosechas_asignadas IN OUT ITEMS_CLASES_COSECHAS%ROWTYPE
                                               , p_msg_return               IN OUT varchar2
                                               ) RETURN boolean;  


---------------------------------------
--body
                                               
FUNCTION f_valida_cosechas_asignadas        ( p_cosechas_asignadas IN OUT ITEMS_CLASES_COSECHAS%ROWTYPE
                                            , p_msg_return       IN OUT varchar2
                                            ) RETURN boolean IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_cosechas_asignadas: ';
      
      e_error           exception;


   BEGIN


        BEGIN
           p_cosechas_asignadas.ico_id := trim(p_cosechas_asignadas.ico_id);
           
           if p_cosechas_asignadas.ico_cos_id is NULL then
              p_msg_return := 'El campo "Cosechas" no puede ser Nulo.';
              return FALSE;
           end if;
                          
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_cosechas_asignadas ;                                               

   -------
   ----- f_valida_items---

   DECLARE
   p_return                       boolean         := NULL;
   p_prc_name                     varchar2(100)   := 'f_valida_cosechas_asignadas: ';
   p_msg_return                   varchar2(4000)  := NULL;
   r_edit_cosechas_asignadas      ITEMS_CLASES_COSECHAS%rowtype;
   
   e_error             exception;
   
   
BEGIN

      r_edit_cosechas_asignadas.ico_cos_id         := :ico_cos_id;
 
 
   
    p_return := PKG_VALIDACIONES_MAESTROS_ITEMS.f_valida_cosechas_asignadas( r_edit_centros_costos, p_msg_return );
                  
    if p_return = TRUE then              
                 :ico_cos_id    := r_edit_cosechas_asignadas.ico_cos_id;
                
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;



-----Grados asignados
-- Spec

-------Función valida Items / Edición Medida y Asignaciones / Grados Asignados (pag 81)
    FUNCTION f_valida_grados_asignados         ( p_grados_asignados IN OUT ITEMS_CLASES_grados%ROWTYPE
                                               , p_msg_return               IN OUT varchar2
                                               ) RETURN boolean;        

-- Body

FUNCTION f_valida_grados_asignados          ( p_grados_asignados IN OUT ITEMS_CLASES_grados%ROWTYPE
                                            , p_msg_return       IN OUT varchar2
                                            ) RETURN boolean IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_grados_asignados: ';
      
      e_error           exception;


   BEGIN


        BEGIN
           p_grados_asignados.iga_id := trim(p_grados_asignados.iga_id);
           
           if p_grados_asignados.iga_id is NULL then
              p_msg_return := 'El campo "Grados Alcoholicos" no puede ser Nulo.';
              return FALSE;
           end if;
                          
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_grados_asignados ;

----F_valida_items

   DECLARE
   p_return                       boolean         := NULL;
   p_prc_name                     varchar2(100)   := 'f_valida_grados_asignados: ';
   p_msg_return                   varchar2(4000)  := NULL;
   r_edit_grados_asignados        ITEMS_CLASES_grados%rowtype;
   
   e_error             exception;
   
   
BEGIN

                   r_edit_grados_asignados.iga_gra_id  := :iga_gra_id;
 
      p_return := PKG_VALIDACIONES_MAESTROS_ITEMS.f_valida_grados_asignados( r_edit_grados_asignados, p_msg_return );
                  
    if p_return = TRUE then 


                 :iga_gra_id    := r_edit_grados_asignados.iga_gra_id;
                
    
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;


-------LOTES ASIGNADOS
------Spec
-------Función valida Items / Edición Medida y Asignaciones / Lotes Asignados (pag 81)
    FUNCTION f_valida_lotes_asignados         ( p_grados_asignados IN OUT   ITEMS_CLASES_lotes%ROWTYPE
                                               , p_msg_return               IN OUT varchar2
                                               ) RETURN boolean;             


---Body



---INICIO FUNCIÓN VALIDA LOTES ASIGNADOS
FUNCTION f_valida_lotes_asignados           ( p_lotes_asignados IN OUT ITEMS_CLASES_lotes%ROWTYPE
                                            , p_msg_return       IN OUT varchar2
                                            ) RETURN boolean IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_lotes_asignados : ';
      
      e_error           exception;


   BEGIN


        BEGIN
           p_lotes_asignados.ilc_id := trim(p_lotes_asignados.ilc_id);
           
           if p_lotes_asignados.ilc_los_id is NULL then
              p_msg_return := 'El campo "Lotes" no puede ser Nulo.';
              return FALSE;
           end if;
                          
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_lotes_asignados ;


------ FIN FUNCIÓN VALIDA LOTES ASIGNADOS

------F_VALIDA_ITEMS

   DECLARE
   p_return                       boolean         := NULL;
   p_prc_name                     varchar2(100)   := 'f_valida_lotes_asignados: ';
   p_msg_return                   varchar2(4000)  := NULL;
   r_edit_lotes_asignados         ITEMS_CLASES_lotes%rowtype;
   
   e_error             exception;
   
   
BEGIN

                   r_edit_lotes_asignados.ilc_los_id  := :ilc_los_id;
 
      p_return := PKG_VALIDACIONES_MAESTROS_ITEMS.f_valida_lotes_asignados( r_edit_lotas_asignados, p_msg_return );
                  
    if p_return = TRUE then 


                 :ilc_los_id    := r_edit_lotes_asignados.ilc_los_id;
                
    
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;


-------Medidas
------Spec
-------Función valida Items / Edición Medida y Asignaciones / Medida (pag 81)
    FUNCTION f_valida_medida                  ( p_medida IN OUT             ITEMS_CLASES%ROWTYPE
                                               , p_msg_return               IN OUT varchar2
                                               ) RETURN boolean;             


-------Función valida Items / Edición Medida y Asignaciones / Medida (pag 81)
FUNCTION f_valida_medida                    ( p_medida IN OUT    ITEMS_CLASES%ROWTYPE
                                            , p_msg_return       IN OUT varchar2
                                            ) RETURN boolean IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_medida : ';
      
      e_error           exception;


   BEGIN


        BEGIN
           p_medida.itc_id := trim(p_medida.itc_id);
           
           if p_medida.itc_cla_id is NULL then
              p_msg_return := 'El campo "Medida" no puede ser Nulo.';
              return FALSE;
           end if;
                          
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_medida ;


------ FIN FUNCIÓN VALIDA Medida


----F_valida_items

------F_VALIDA_ITEMS

   DECLARE
   p_return                       boolean         := NULL;
   p_prc_name                     varchar2(100)   := 'f_valida_medida: ';
   p_msg_return                   varchar2(4000)  := NULL;
   r_edit_medida                  ITEMS_CLASES%rowtype;
   
   e_error             exception;
   
   
BEGIN

                   r_edit_medida.itc_cla_id  := :itc_cla_id;
 
      p_return := PKG_VALIDACIONES_MAESTROS_ITEMS.f_valida_medida( r_edit_medida, p_msg_return );
                  
    if p_return = TRUE then 


                 :itc_cla_id    := r_edit_medida.itc_cla_id;
                
    
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;





















































----------------------------------------------------------------------------------------------------------

--f_valida_iems pag (82-85) 

DECLARE
   p_return                boolean         := NULL;
   p_prc_name              varchar2(100)   := 'f_valida_sujetos: ';
   p_msg_return            varchar2(4000)  := NULL;
   r_sujetoS                sujetos%rowtype;
   
   e_error             exception;
   
BEGIN

      r_sujetos.SUJ_TIPO_PERSONA       := :P85_SUJ_TIPO_PERSONA;
    
    p_return :=PKG_VALIDACIONES_MAESTROS_SUJETOS.f_valida_sujetos( r_sujetos, p_msg_return );
                  
    if p_return = TRUE then              
                 :P85_SUJ_TIPO_PERSONA     := r_sujetos.SUJ_TIPO_PERSONA;
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;

/*

DECLARE
   p_return                boolean         := NULL;
   p_prc_name              varchar2(100)   := 'f_valida_sujetos: ';
   p_msg_return            varchar2(4000)  := NULL;
   r_sujetos               sujetos%ROWTYPE;
   
   e_error             exception;
 
BEGIN

    r_sujetos.SUJ_TIPO_PERSONA     := :P85_SUJ_TIPO_PERSONA;
    r_sujetos.SUJ_ID_FISCAL        := :P85_SUJ_ID_FISCAL;
    r_sujetos.SUJ_NOMBRE           := :P85_SUJ_NOMBRE;
    
    p_return :=PKG_VALIDACIONES_MAESTROS_SUJETOS.f_valida_sujetos( r_sujetos, p_msg_return );
                  
    if p_return = TRUE then              
                 :P85_SUJ_TIPO_PERSONA  := r_sujetos.SUJ_TIPO_PERSONA;
                 :P85_SUJ_ID_FISCAL     := r_sujetos.SUJ_ID_FISCAL;
                 :P85_SUJ_NOMBRE        := r_sujetos.SUJ_NOMBRE;
    end if;

     return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;

*/







--F_valida_items

DECLARE
   p_return            boolean         := null;
   p_prc_name          varchar2(100)   := 'f_valida_sujetos_nuevo: ';
   p_msg_return        varchar2(4000)  := NULL;
   
   e_error             exception;
      
BEGIN
    
    p_return := PKG_VALIDACIONES_MAESTROS_SUJETOS.f_valida_sujetos_nuevo ( :SUJ_TIPO_PERSONA, p_msg_return );
   
    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;




/*DECLARE
   p_return                boolean         := NULL;
   p_prc_name              varchar2(100)   := 'f_valida_sujetos_nuevo: ';
   p_msg_return            varchar2(4000)  := NULL;
   r_sujetos               sujetos%rowtype;
   
   e_error             exception;
   
BEGIN

    r_sujetos.SUJ_TIPO_PERSONA     := :P85_SUJ_TIPO_PERSONA;
   -- r_sujetos.SUJ_ID_FISCAL        := :P85_SUJ_ID_FISCAL;
    
    
    p_return := PKG_VALIDACIONES_MAESTROS_SUJETOS.f_valida_sujetos( r_sujetos, p_msg_return );
                  
    if p_return = TRUE then 
     
    :P85_SUJ_TIPO_PERSONA     := r_sujetos.SUJ_TIPO_PERSONA;
   -- :P85_SUJ_ID_FISCAL        := r_sujetos.SUJ_ID_FISCAL;
    
      
    end if;

    return p_msg_return;
    


EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;
*/





/*

DECLARE
   p_return                boolean         := NULL;
   p_prc_name              varchar2(100)   := 'f_valida_sujetos: ';
   p_msg_return            varchar2(4000)  := NULL;
   r_sujetos               sujetos%ROWTYPE;
   
   e_error             exception;
 
BEGIN

    r_sujetos.SUJ_TIPO_PERSONA     := :P85_SUJ_TIPO_PERSONA;
    r_sujetos.SUJ_ID_FISCAL        := :P85_SUJ_ID_FISCAL;
    r_sujetos.SUJ_NOMBRE           := :P85_SUJ_NOMBRE;
    
    p_return :=PKG_VALIDACIONES_MAESTROS_SUJETOS.f_valida_sujetos( r_sujetos, p_msg_return );
                  
    if p_return = TRUE then              
                 :P85_SUJ_TIPO_PERSONA  := r_sujetos.SUJ_TIPO_PERSONA;
                 :P85_SUJ_ID_FISCAL     := r_sujetos.SUJ_ID_FISCAL;
                 :P85_SUJ_NOMBRE        := r_sujetos.SUJ_NOMBRE;
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;

*/


f_error_constraints