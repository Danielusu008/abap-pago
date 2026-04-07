CLASS zcl_ejemplo_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ejemplo_der IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.




data  lv_resultado type i value 2 .





while lv_resultado < 5.

lv_resultado = lv_resultado + 1.


endwHILE.

out->write( lv_resultado ).

  ENDMETHOD.

ENDCLASS.
