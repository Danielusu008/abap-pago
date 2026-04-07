CLASS zcl_empleado_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_empleado_der IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    MODIFY zemployee_der FROM TABLE @( VALUE #( ( employee = '1'  mangaer = ''  name = 'name 1' )
                                                ( employee = '2'  mangaer = '1' name = 'name 2' )
                                                ( employee = '3'  mangaer = '2' name = 'name 3' )
                                                ( employee = '4'  mangaer = '3' name = 'name 4' ) )  ).


  ENDMETHOD.

ENDCLASS.
