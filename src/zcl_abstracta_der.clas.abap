CLASS zcl_abstracta_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abstracta_der IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA lt_abstract TYPE TABLE OF zi_cds_21.


  ENDMETHOD.

ENDCLASS.
