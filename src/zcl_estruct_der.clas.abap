CLASS zcl_estruct_der DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .





  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_estruct_der IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: gt_flights TYPE STANDARD TABLE OF /dmo/flight.

    SELECT FROM /dmo/flight
      FIELDS *
      WHERE carrier_id EQ 'LH'
      INTO TABLE @gt_flights.

   " SORT gt_flights DESCENDING.

************************" MODIFY
    out->write( data = gt_flights name = 'BEFORE / gt_flights' ).

    DATA(lv_index) = sy-tabix. "X

    LOOP AT gt_flights INTO DATA(gs_flight).

      out->write( lv_index ). "X
      IF gs_flight-flight_date GT '20250101'.
        out->write( |dentro  { lv_index } | ). "X
        gs_flight-flight_date = cl_abap_context_info=>get_system_date( ).

*          MODIFY gt_flights FROM gs_flight INDEX 2.
        MODIFY gt_flights FROM gs_flight INDEX sy-tabix.

      ENDIF.
      ENDLOOP.

    ENDMETHOD.



ENDCLASS.

