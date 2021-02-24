create or replace PACKAGE BODY pkg_validaciones_maestros_generales  IS

------------ Inicio Valida Periodos contables ------------------

FUNCTION f_valida_periodos_contables ( p_ejc_nombre ejercicios_contables.ejc_nombre%type
                                     , p_ejc_fecha_desde ejercicios_contables.ejc_fecha_desde%type
                                     , p_ejc_fecha_hasta ejercicios_contables.ejc_fecha_hasta%type
                                     , p_ejc_estado ejercicios_contables.ejc_estado%type 
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_periodos_contables: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --NOMBRE
           if p_ejc_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
           --FECHA DESDE
            if p_ejc_fecha_desde is NULL then
              p_msg_return := 'El campo Fecha Desde no puede estar vacío.';
              return FALSE;
           end if;
           --FECHA HASTA
            if p_ejc_fecha_hasta is NULL then
              p_msg_return := 'El campo Fecha Hasta no puede estar vacío.';
              return FALSE;
           end if;
           --Estado
            if p_ejc_estado is NULL then
              p_msg_return := 'El campo Estado no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_periodos_contables;
 
------------ Fin Valida Periodos contables ------------------


-------------- INICIO Valida CENTROS DE COSTOS ---------

FUNCTION f_valida_centros_costos    ( p_cec_nombre centros_costos.cec_nombre%type
                                    , p_msg_return       IN OUT varchar2
                                    ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_centros_costos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_cec_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_centros_costos;
   
------------- FIN Valida CENTRO DE COSTOS ------------------



------------ INICIO Valida TIPOS DE DEPÓSITOS ------------------



FUNCTION f_valida_tipos_depositos    ( p_tde_descripcion    depositos_tipos.tde_descripcion%type
                                     , p_tde_clase          depositos_tipos.tde_clase%type
                                     , p_msg_return       IN OUT varchar2
                                     ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_tipos_despositos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
           
           --Descripcion
           if p_tde_descripcion is NULL then
              p_msg_return := 'El campo Descripcion no puede estar vacío.';
              return FALSE;
           end if;
           
           --clase
            if p_tde_clase is NULL then
               p_msg_return := 'El campo Clase no puede estar vacío.';
               return FALSE;
           end if;
                                 
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_tipos_depositos;
 
------------ Fin Valida TIPOS DE DEPÓSITOS ------------------



-------------- INICIO Valida DEPÓSTOS ---------

FUNCTION f_valida_depositos         ( p_dep_nombre       depositos.dep_nombre%type
                                    , p_msg_return       IN OUT varchar2
                                    ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_depositos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_dep_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_depositos;
   
------------- FIN Valida DEPÓSITOS ------------------


-------------- INICIO Valida ACTIVIDADES ---------

FUNCTION f_valida_actividades       ( p_atd_nombre       actividades.atd_nombre%type
                                    , p_msg_return       IN OUT varchar2
                                    ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_actividades: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_atd_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_actividades;
   
------------- FIN Valida ACTIVIDADES ------------------



------------ INICIO Valida DOMINIOS ------------------

FUNCTION f_valida_dominios    ( p_dno_dominio dominios.dno_dominio%type
                              , p_msg_return       IN OUT varchar2
                              ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_dominios: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_dno_dominio is NULL then
              p_msg_return := 'El campo Dominio no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_dominios;

-------------- FIN Valida DOMINIOS ------------------


------------ INICIO Valida VIGENCIA DE IMPUESTOS ------------------

FUNCTION f_valida_vigencia_impuestos    ( p_imv_fecha impuestos_vigencias.imv_fecha%type
                                        , p_imv_imp_id impuestos_vigencias.imv_imp_id%type
                                        , p_msg_return       IN OUT varchar2
                                        ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_vigencia_impuestos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_imv_fecha is NULL then
              p_msg_return := 'El campo Fecha no puede estar vacío.';
              return FALSE;
           end if;
           
           if p_imv_imp_id is NULL then
              p_msg_return := 'El campo Impuesto no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_vigencia_impuestos;

-------------- FIN Valida VIGENCIA DE IMPUESTOS  ------------------

------------   INICIO Valida IMPUESTOS  ------------------

FUNCTION f_valida_impuestos             ( p_imp_nombre impuestos.imp_nombre%type
                                      --  , p_imp_tipo impuestos.imp_tipo%type
                                        , p_msg_return       IN OUT varchar2
                                        ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_impuestos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_imp_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
           
           --if p_imp_tipo is NULL then
             -- p_msg_return := 'El campo Tipo no puede estar vacío.';
              --return FALSE;
           --end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_impuestos;
   
   -- Tengo que revisar no valida bien el nombre. Lo toma nulo aunque no lo esté. (pag62)

-------------- FIN Valida IMPUESTOS ------------------
  



------------ INICIO Valida TIPO DE OPERACIONES ------------------

FUNCTION f_valida_tipo_operaciones    ( p_toc_nombre       tipo_operacion_comp.toc_nombre%type
                                      , p_msg_return       IN OUT varchar2
                                      ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_tipo_operaciones: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_toc_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
                      
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_tipo_operaciones;

-------------- FIN Valida TIPO DE OPERACINES ------------------
  
  
  
  

   





END pkg_validaciones_maestros_generales;
   

