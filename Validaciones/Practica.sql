-- Hola Mundo PL
BEGIN
  
  
  dbms_output.put_line ('Hola Mundo');
  
  
END;


-- Variables

declare 
    mi_numero number(8) := 5;

begin
   if mi_numero > 10 then
   dbms_output.put_line('mi numero es mayor');
   else
   dbms_output.put_line('mi numero es menor de 10');
    end if;

end;    



-- Variable numerica y pedir su valor

declare 
    mi_numero number(8) := &numero;

begin
   
   dbms_output.put_line('El Valor es' || '' || mi_numero);
   
end;    


                