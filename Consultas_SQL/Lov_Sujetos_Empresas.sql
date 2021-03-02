-- Lov Para Sujetos que esten activos, Que pertenezcan a Personal y que dependan de
-- empresa y sucursal. 

select S.SUJ_ID_FISCAL , S.SUJ_APELLIDO , S.SUJ_NOMBRE , X.SUS_ID , X.SUS_SUC_ID ,
       S.SUJ_ID as r
from SUJETOS_PERFILES P, SUJETOS S , SUJETOS_SUCURSALES X , SUCURSALES Y
where P.SUP_SUJ_ID = S.SUJ_ID and P.SUP_PER_ID = 18   -- Sujeto PERSONAL (tabla PERFILES)
and S.SUJ_ESTADO = 'A'                                -- Personal Estado Activo (Tabla SUJETOS)
--and S.SUJ_ID = X.SUS_SUC_ID
order by 2