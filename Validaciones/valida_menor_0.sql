---spec

 ------Probando Funcion valida que no sea menor a 0 (p 157) 

FUNCTION f_valida_desagregacion_cantidad ( p_cantidad IN OUT COMPOSICIONES_ITEMS%ROWTYPE
                                        , p_msg_return      IN OUT varchar2
                                          ) RETURN boolean;     


-- body

FUNCTION f_valida_desagregacion_cantidad        ( p_cantidad IN OUT COMPOSICIONES_ITEMS%ROWTYPE
                                                , p_msg_return      IN OUT varchar2)
                                                 RETURN boolean IS
     
    v_procedimiento       varchar2(1000) := v_package || 'f_valida_desagregacion_cantidad: ';

   BEGIN

     
     
      if nvl (p_cantidad.icm_q_item_comp, 0) < 0 then
         p_msg_return := 'La Cantidad no puede ser menor que cero.';
         return FALSE;
      end if;

       

      return TRUE;

   EXCEPTION
      when others then
         p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
         return FALSE;
   END f_valida_desagregacion_cantidad;
   



--Valida Items

DECLARE
   p_return            boolean         := NULL;
   p_prc_name          varchar2(100)   := 'f_valida_desagregacion_cantidad: ';
   p_msg_return        varchar2(4000)  := NULL;
   r_cantidad          COMPOSICIONES_ITEMS%rowtype;
   
   e_error             exception;
   
   
BEGIN


    r_cantidad.icm_q_item_comp          := icm_q_item_comp;
  
    
    p_return := PKG_VALIDACIONES_MAESTROS_PRODUCCION.f_valida_desagregacion_cantidad( r_cantidad, p_msg_return );
                  
    if p_return = TRUE then              
                  icm_q_item_comp     := r_cantidad.icm_q_item_comp;
   
               
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;






/* No Funciona "Todavia"

DECLARE
   p_return            boolean         := NULL;
   p_prc_name          varchar2(100)   := 'f_valida_desagregacion_cantidad: ';
   p_msg_return        varchar2(4000)  := NULL;
   r_cantidad          COMPOSICIONES_ITEMS%rowtype;
   
   e_error             exception;
   
   
BEGIN


    r_cantidad.icm_q_item_comp          := :icm_q_item_comp;
  
    
    p_return := PKG_VALIDACIONES_MAESTROS_PRODUCCION.f_valida_desagregacion_cantidad( r_cantidad, p_msg_return );
                  
    if p_return = TRUE then              
                  :icm_q_item_comp     := r_cantidad.icm_q_item_comp;
   
               
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;

*/