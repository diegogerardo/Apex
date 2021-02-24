
-- Pagina 120 desde 115
-- Tabla Mon_decimales_compras_cab
--


--f_valida_items

DECLARE
   p_return                boolean         := NULL;
   p_prc_name              varchar2(100)   := 'f_valida_edicion_monedas: ';
   p_msg_return            varchar2(4000)  := NULL;
   r_monedas               monedas%rowtype;
   
   e_error             exception;
   
BEGIN

     r_monedas.MON_DECIMALES_COMPRAS_CAB      :=  :p120_MON_DECIMALES_COMPRAS_CAB;
   --  r_monedas.MON_DECIMALES_COMPRAS_DET      := :P12O_MON_DECIMALES_COMPRAS_DET;
    
    p_return :=PKG_VALIDACIONES_MAESTROS_TESORERIA.f_valida_edicion_monedas( r_monedas, p_msg_return );
                  
    if p_return = TRUE then              
                 :p120_MON_DECIMALES_COMPRAS_CAB    := r_monedas.MON_DECIMALES_COMPRAS_CAB;
           --      :P120_MON_DECIMALES_COMPRAS_DET    := r_monedas.MON_DECIMALES_COMPRAS_DET;
    end if;

    return p_msg_return;
    
EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;