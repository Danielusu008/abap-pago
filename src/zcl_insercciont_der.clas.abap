CLASS zcl_insercciont_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insercciont_der IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    DATA ls_airline TYPE zbd_sql_der.
*
*    ls_airline = VALUE #( carrier_id    = 'AA'
*                          name          = 'American Airlines'
*                          currency_code = 'USD' ).

*
*    "    INSERT INTO zbd_sql_der VALUES @ls_airline.
*    INSERT zbd_sql_der FROM @ls_airline.
*
*    IF sy-subrc EQ 0.
*      out->write( 'Record inserted correctly' ).
*    ELSE.
*      out->write( 'The Record inserted correctly' ).
*    ENDIF.

  ENDMETHOD.

ENDCLASS.
