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
   
   -- Tengo que revisar no valida bien el nombre. Lo toma nulo aunque no lo esté.

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

------------ INICIO Valida TIPO DE COMPROBANTES  ------------------

FUNCTION f_valida_tipo_comprobantes   ( p_tco_codigo       comprobantes_tipos.tco_codigo%type
                                      , p_tco_nombre       comprobantes_tipos.tco_nombre%type  
                                      , p_msg_return       IN OUT varchar2
                                      ) RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_tipo_comprobantes: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_tco_codigo is NULL then
              p_msg_return := 'El campo Código no puede estar vacío.';
              return FALSE;
           end if;
                     
          if p_tco_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;           
                     
                     
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_tipo_comprobantes;

-------------- FIN Valida TIPO DE COMPROBANTES ------------------
  
  
------------ INICIO Valida Clases DE COMPROBANTES  ------------------

FUNCTION f_valida_comprobantes_clases    ( p_cco_descripcion       comprobantes_clases.cco_descripcion%type
                                         , p_cco_letra             comprobantes_clases.cco_letra%type  
                                         , p_msg_return            IN OUT varchar2
                                         )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_comprobantes_clases: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_cco_descripcion is NULL then
              p_msg_return := 'El campo Descripción no puede estar vacío.';
              return FALSE;
           end if;
                     
          if  p_cco_letra is NULL then
              p_msg_return := 'El campo Letra no puede estar vacío.';
              return FALSE;
           end if;           
                     
                     
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_comprobantes_clases;

-------------- FIN Valida CLASES De COMPROBANTES ------------------
    
  
  
  ------------ INICIO Valida  COMPROBANTES  ------------------

FUNCTION f_valida_comprobantes           ( p_com_nombre            comprobantes.com_nombre%type
                                         , p_com_codigo            comprobantes.com_codigo%type  
                                         , p_msg_return            IN OUT varchar2
                                         )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_comprobantes: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_com_nombre is NULL then
              p_msg_return := 'El campo Nombre no puede estar vacío.';
              return FALSE;
           end if;
                     
          if  p_com_codigo is NULL then
              p_msg_return := 'El campo Codigo no puede estar vacío.';
              return FALSE;
           end if;           
                     
                     
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_comprobantes;

-------------- FIN Valida COMPROBANTES ------------------
    
   ------------ INICIO Valida  Configuracion de impresiones  ------------------

FUNCTION f_valida_configuracion_impresiones           ( p_fim_tipo_salida            comprobantes_formato_impresion.fim_tipo_salida%type
                                                      , p_msg_return                 IN OUT varchar2
                                         )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_configuracion_impresones: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_fim_tipo_salida is NULL then
              p_msg_return := 'El campo "Tipo de salida" no puede estar vacío.';
              return FALSE;
           end if;
                     
                  
                     
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_configuracion_impresiones;

-------------- FIN Valida Configuracion de Impresiones ------------------
    
 ------------ INICIO Valida  Clasificadores  ------------------

FUNCTION f_valida_clasificadores           ( p_cls_nombre                 clasificadores.cls_nombre%type
                                           , p_msg_return                 IN OUT varchar2
                                           )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_clasificadores: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_cls_nombre is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                     
                  
                     
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_clasificadores;

-------------- FIN Valida Clasificadores ------------------
   
------------ INICIO Valida  Numeradores  ------------------

FUNCTION f_valida_numeradores              ( p_num_nombre                 numeradores.num_nombre%type
                                           , p_msg_return                 IN OUT varchar2
                                           )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_numeradores: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_num_nombre is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                     
                  
                     
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_numeradores;

-------------- FIN Valida Numeradores ------------------   


------------ INICIO Valida  Configuración de Interfaces (pag.34)  ------------------


FUNCTION f_valida_configuracion_interfaces        ( p_coi_servidor             configuraciones_interfaces.coi_servidor%type
                                                  , p_coi_puerto               configuraciones_interfaces.coi_puerto%type
                                                  , p_msg_return               IN OUT varchar2
                                                  )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_configuracion_interfaces: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_coi_servidor  is NULL then
              p_msg_return := 'El campo "Servior" no puede estar vacío.';
              return FALSE;
           end if;
                     
           if p_coi_puerto   is NULL then
              p_msg_return := 'El campo "Puerto" no puede estar vacío.';
              return FALSE;
           end if;
                      
           
                     
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_configuracion_interfaces;

-------------- FIN Valida Numeradores ------------------  

------------ INICIO Valida  Fase Interfaz (pag.35)  ------------------


FUNCTION f_valida_fase_interfaz        ( p_fas_nombre             fases_interfaces.fas_nombre%type
                                       , p_msg_return               IN OUT varchar2
                                       )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_fase_interfaz: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_fas_nombre  is NULL then
              p_msg_return := 'El campo "Nombre" no puede estar vacío.';
              return FALSE;
           end if;
                     
                       
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_fase_interfaz;

-------------- FIN Valida fase interfaz ------------------  

------------ INICIO Valida  Impuestos Interfaz (pag.37)  ------------------


FUNCTION f_valida_impuestos_interfaz   ( p_imi_c_impuesto           impuestos_interfaces.imi_c_impuesto%type
                                       , p_msg_return               IN OUT varchar2
                                       )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_impuestos_interfaz: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_imi_c_impuesto  is NULL then
              p_msg_return := 'El campo "Impuesto" no puede estar vacío.';
              return FALSE;
           end if;
                     
                       
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_impuestos_interfaz;

-------------- FIN Valida impuestos Interfaz ------------------  

------------ INICIO Valida  Comprobantes  Interfaz (pag.37)  ------------------


FUNCTION f_valida_comprobantes_interfaz        ( p_CIN_C_COMPROBANTE         comprobantes_interfaces.CIN_C_COMPROBANTE%type
                                               , p_msg_return               IN OUT varchar2
                                               )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_comprobantes_interfaz: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_CIN_C_COMPROBANTE  is NULL then
              p_msg_return := 'El campo "Comprobante" no puede estar vacío.';
              return FALSE;
           end if;
                     
                       
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_comprobantes_interfaz;

-------------- FIN Valida impuestos Interfaz ------------------  

------------ INICIO Valida  Vehiculos (pag.125)  ------------------


FUNCTION f_valida_vehiculos        ( p_veh_patente         vehiculos.veh_patente%type
                                   , p_msg_return               IN OUT varchar2
                                   )  RETURN boolean  IS
                                            
      v_procedimiento   varchar2(4000) := v_package || 'f_valida_vehiculos: ';
      
      e_error           exception;

   BEGIN

        BEGIN
                      
           if p_veh_patente  is NULL then
              p_msg_return := 'El campo "Patente" no puede estar vacío.';
              return FALSE;
           end if;
                     
                       
        END;


      return TRUE;

   EXCEPTION
  
          when others then
                 p_msg_return := 'Error ' || v_procedimiento || to_char (sqlcode) || ' - ' || sqlerrm;
                 return FALSE;
         
   END f_valida_vehiculos;

-------------- FIN Valida impuestos Interfaz ------------------  








END pkg_validaciones_maestros_generales;
   

