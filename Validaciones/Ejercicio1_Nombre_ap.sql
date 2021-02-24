DECLARE

MiVariable number;

BEGIN

SELECT MAX(department_id)  into mivariable from departments; 
 
dbms_output.put_line ('Codigo Maximo' || Mivariable);

END;

