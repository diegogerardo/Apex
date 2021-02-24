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


    FUNCTION f_valida_vigencia_impuestos  ( p_imv_fecha    impuestos_vigencias.imv_fecha%type
                                          , p_imv_imp_id   impuestos_vigencias.imv_imp_id%type
                                          , p_msg_return       IN OUT varchar2
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

                  
                 
                                                     


   
END pkg_validaciones_maestros_generales;
