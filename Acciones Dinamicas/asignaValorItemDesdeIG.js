/* Este codigo se debe agregar en una Acción dinamica.
En este caso lo usamos para asignar el valor de una fila y una columna especifica
a un item. 

Evento: Selection Change
  --> Accion True
      --->Set Value 
          ----> JavaScrip Expression
*/

(
  this.data && this.data.selectedRecords && this.data.selectedRecords.length == 1
) ? 
 this.data.model.getValue(
    this.data.selectedRecords[0], "CAMPOAQUI" /* Este es el campo de la grilla que se asigna al item*/
    ) : ""