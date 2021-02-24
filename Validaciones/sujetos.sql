   DECLARE
   p_return                boolean         := NULL;
   p_prc_name              varchar2(100)   := 'f_valida_sujetos: ';
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




/*   no funciona
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





--- AsignaValores - Pre Insert -- plsql fuction retur error text

DECLARE
   p_prc_name varchar2(100) := 'Asigna valores: ';

BEGIN
   
   :P85_SUJ_ESTADO := nvl(:P85_SUJ_ESTADO, 'P');  

   return NULL;

EXCEPTION
   when others then
      return 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
END;